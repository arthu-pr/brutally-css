# How does it work?

### Conditional / Boolean value in CSS

- [Pseudo-boolean CSS custom properties](https://keithclark.co.uk/articles/pseudo-boolean-css-custom-properties/)

### CSS-only Type Grinding

- [CSS-only Type Grinding](https://www.bitovi.com/blog/css-only-type-grinding-casting-tokens-into-useful-values)

```css
@property --color {
  syntax: 'primary | secondary | danger';
  initial-value: primary;
  inherits: true;
}

@property --primary {
  syntax: '<integer>';
  initial-value: 1;
  inherits: true;
}

@property --secondary {
  syntax: '<integer>';
  initial-value: 1;
  inherits: true;
}

@property --danger {
  syntax: '<integer>';
  initial-value: 1;
  inherits: true;
}

@property --primary-else-0 {
  syntax: 'primary | <integer>';
  initial-value: 0;
  inherits: true;
}

@property --secondary-else-0 {
  syntax: 'secondary | <integer>';
  initial-value: 0;
  inherits: true;
}

@property --danger-else-0 {
  syntax: 'danger | <integer>';
  initial-value: 0;
  inherits: true;
}

--danger-else-0: var(--color);
--danger: var(--danger-else-0);

--primary-else-0: var(--color);
--primary: var(--primary-else-0);

--secondary-else-0: var(--color);
--secondary: var(--secondary-else-0);

--theme-current-color: color-mix(
  in srgb,
  var(--color-primary) calc(var(--primary) * 100%),
  color-mix(
    in srgb,
    var(--color-secondary) calc(var(--secondary) * 100%),
    var(--color-danger) calc(var(--danger) * 100%)
  )
);
```
