#!/bin/bash

# Minify the HTML file using html-minifier with the following parameters:

# --collapse-whitespace: Removes extra spaces, tabs, and line breaks to reduce file size.
# --remove-comments: Deletes all HTML comments to clean up the file for production.
# --remove-optional-tags: Omits optional closing tags (e.g., </li>, </tr>) that browsers handle automatically.
# --remove-redundant-attributes: Eliminates attributes that have default values (e.g., type="text" in <input>).
# --remove-script-type-attributes: Removes the default type="text/javascript" from <script> tags.
# --remove-tag-whitespace: Deletes whitespace between tags to further compress the HTML.
# --use-short-doctype: Converts the doctype declaration to the short HTML5 form: <!DOCTYPE html>.
# --minify-css true: Minifies inline CSS, removing unnecessary spaces and comments.
# index.html: The input file to be minified.
# -o lol.html: The output file where the minified HTML will be saved.

html-minifier \
  --collapse-whitespace \
  --remove-comments \
  --remove-optional-tags \
  --remove-redundant-attributes \
  --remove-script-type-attributes \
  --remove-tag-whitespace \
  --use-short-doctype \
  --minify-css true \
  index.html -o lol.html

# After execution, the minified HTML is saved as 'lol.html'.
