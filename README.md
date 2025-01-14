## Minify HTML and CSS commands

```sh
# Put a comment on each parameter
html-minifier --collapse-whitespace --remove-comments --remove-optional-tags --remove-redundant-attributes --remove-script-type-attributes --remove-tag-whitespace --use-short-doctype --minify-css true index.html -o lol.html

cleancss -b css/**/*.css --batch-suffix ''

```
