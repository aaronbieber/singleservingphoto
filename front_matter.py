#!/bin/env python

from pandocfilters import toJSONFilter, Str

in_front_matter = False

def front_matter(k, v, fmt, meta):
    global in_front_matter

    if k == 'Str':
        if v == '---':
            in_front_matter = True

        if in_front_matter:
            return Str(v)

if __name__ == '__main__':
    toJSONFilter(front_matter)
