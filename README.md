# <img align="left" height="80" alt="brutallycss-logo" src="https://github.com/user-attachments/assets/4417b99d-8669-4a79-9b05-4b3950f0981d" /> Playground to explore the Limits of CSS Without JavaScript

---

<img width="100%" alt="image" src="https://github.com/user-attachments/assets/0ed4885d-77a0-4ff8-b376-973be2d3c17e" />

## Get Started

```sh
npm install clean-css-cli -g
```

```sh
cleancss -o dist/main.min.css css/**/*.css --watch
```

```sh
lightningcss css/main.css --bundle --minify -o main.min.css
```

## Minify HTML and CSS commands

```sh
# Put a comment on each parameter
html-minifier --collapse-whitespace --remove-comments --remove-optional-tags --remove-redundant-attributes --remove-script-type-attributes --remove-tag-whitespace --use-short-doctype --minify-css true index.html -o lol.html

cleancss -o dist/main.min.css css/**/*.css --watch

```

- [ ] https://css-tricks.com/almanac/selectors/a/attribute/
- [ ] https://css-tricks.com/css-keylogger/
- [ ] https://knowler.dev/blog/so-you-want-to-encapsulate-your-styles
- [ ] https://mayank.co/blog/revert-layer/
- [ ]

#### Sources

### Conditional / Boolean value in CSS

- [Pseudo-boolean CSS custom properties](https://keithclark.co.uk/articles/pseudo-boolean-css-custom-properties/)

### CSS-only Type Grinding

- [(not fully used) Cyclic Dependency Space Toggles](https://kizu.dev/cyclic-toggles/)

- [Inline conditionals in CSS, now?](https://lea.verou.me/blog/2024/css-conditionals-now/)

- [CSS-only Type Grinding](https://www.bitovi.com/blog/css-only-type-grinding-casting-tokens-into-useful-values)

### CUBE CSS

[Link](https://cube.fyi/)

## HOW DOES IT WORK?

See [HOW-TO.MD](HOW-TO.MD) for explanations and code samples.
