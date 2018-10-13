# Random image tag for Jekyll

module Jekyll
  class RandomImageTag < Liquid::Tag
    @image = ''
    @direction = 'left'

    def initialize(tag_name, markup, tokens)
      if markup =~ /(?<direction>left|right)/i
        @direction = $~['direction'].strip
      end

      images = Dir["ssp/*.jpg"]
      @image = images[rand(images.length)]

      super
    end

    def render(context)
      "<img src=\"/#{@image}\" class=\"drop #{@direction}\" />"
      #"![](/#{@image}){:.random-#{@direction}}"
    end

  end
end

Liquid::Template.register_tag('random', Jekyll::RandomImageTag)
