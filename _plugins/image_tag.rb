# coding: utf-8
# Title: Simple Image tag for Jekyll
# Authors: Brandon Mathis http://brandonmathis.com
#          Felix Schäfer, Frederic Hemberger
# Description: Easily output images with optional class names, width, height, title and alt attributes
#
# Syntax {% img [class name(s)] [http[s]:/]/path/to/image [width [height]] [title text | "title text" ["alt text"]] %}
#
# Examples:
# {% img /images/ninja.png Ninja Attack! %}
# {% img left half http://site.com/images/ninja.png Ninja Attack! %}
# {% img left half http://site.com/images/ninja.png 150 150 "Ninja Attack!" "Ninja in attack posture" %}
#
# Output:
# <img src="/images/ninja.png">
# <img class="left half" src="http://site.com/images/ninja.png" title="Ninja Attack!" alt="Ninja Attack!">
# <img class="left half" src="http://site.com/images/ninja.png" width="150" height="150" title="Ninja Attack!" alt="Ninja in attack posture">
#

module Jekyll

  class ImageTag < Liquid::Tag
    @img = {
      'lightbox' => false,
      'original' => ''
    }

    def initialize(tag_name, markup, tokens)
      attributes = ['class', 'src', 'width', 'height', 'title']

      if markup =~ /(?<class>\S.*\s+)?(?<src>(?:https?:\/\/|\/|\S+\/)\S+)(?:\s+(?<width>\d+))?(?:\s+(?<height>\d+))?(?<title>\s+.+)?/i
        @img = attributes.reduce({}) { |img, attr| img[attr] = $~[attr].strip if $~[attr]; img }
        if /(?:"|')(?<title>[^"']+)?(?:"|')\s+(?:"|')(?<alt>[^"']+)?(?:"|')/ =~ @img['title']
          @img['title']  = title
          @img['alt']    = alt
        else
          @img['alt']    = @img['title'].gsub!(/"/, '&#34;') if @img['title']
        end
        @img['class'].gsub!(/"/, '') if @img['class']
      end

      if @img['src'] and @img['src'] =~ /@/
        @img['lightbox'] = true
        @img['original'] = @img['src'].gsub(/@[^.]*/, '')
      end

      super
    end

    def render(context)
      if @img
        fig_class = @img.key?("class") ? " class=\"" + @img["class"] + "\"" : ""
        img_attr = @img.collect {|k,v| "#{k}=\"#{v}\"" if k != "class" and v}.join(" ")

        html  = "<figure#{fig_class}>"
        html += if @img['lightbox'] then "<a class=\"lightbox\" href=\"#{@img['original']}\">" else "" end
        html += "<img #{img_attr} />"
        html += if @img['lightbox'] then "</a>" else "" end
        html += if @img.key?('title') then "<figcaption>#{@img['title']}</figcaption>" else "" end
        html += "</figure>"

        return html
      else
        "Error processing input, expected syntax: {% img [class name(s)] [http[s]:/]/path/to/image [width [height]] [title text | \"title text\" [\"alt text\"]] %}"
      end
    end
  end
end

Liquid::Template.register_tag('img', Jekyll::ImageTag)
