# Cube CSS Utilities ([source](https://cube.fyi/utilities.html))

- [viewport.css](./viewport.css): get viewport width and height units in CSS only
  Using `tan()` and `atan2()` function

```css
/* tan (https://en.wikipedia.org/wiki/Tangent_(function)) is used to calculate angles based on viewport dimensions. */
/* You pass the ratio of height to width (or vice versa) to get the angle in radians. */
tan(angle-in-radians) = opposite / adjacent

/* where opposite = height and adjacent = width */

/* atan2 (https://en.wikipedia.org/wiki/Atan2) is doing the opposite, it returns the angle in radians given the ratio of two sides of a right triangle.
atan2(opposite, adjacent) = angle-in-radians */

/* The trick is that if we calculate the ratio but use 1px for width or height, we can get each value separately. */
  /* We start from the full width and full height of current viewport */
    --100svw: 100vw;
  --100svh: 100vh;

  /* We calculate the viewport width and height in px using tan and atan2 */
  --viewport-width: tan(atan2(var(--100svw), 1px));
  --viewport-height: tan(atan2(var(--100svh), 1px));
```

- [screen.css](./screens.css): utilities to later specify values based on screen size without using media queries
  Based on [css-media-vars](https://github.com/propjockey/css-media-vars/tree/master)

Using the [CSS Space Toggle Tricks](https://css-tricks.com/the-css-custom-property-toggle-trick/), allowing runtime evaluation of CSS variables ([CSS is a programming language thanks to the Space Toggle trick](https://github.com/propjockey/css-sweeper?tab=readme-ov-file#css-is-a-programming-language-thanks-to-the-space-toggle-trick))

```css
/* We define custom properties that say "we are from this screen size and up" */
/* Helpers - https://lea.verou.me/blog/2020/10/the-var-space-hack-to-toggle-multiple-values-with-one-custom-property/#limitations*/
--on: initial;
--off: ;

/* initial means boolean value: true */
--from-xs: var(--on);
--from-sm: var(--on);
--from-md: var(--on);
--from-lg: var(--on);
--from-xl: var(--on);

/* We then use media queries, but only in this file */
@media (min-width: 40rem) {
  :root {
    --from-sm: var(--off);
  }
}
/* md+ */
@media (min-width: 64rem) {
  :root {
    --from-md: var(--off);
  }
}
/* etc. */
```

Usage:

```css
:root {
  --border-width-sm: var(--from-sm) 4px;
  --border-width-md: var(--from-md) 8px;

  --border-width-default: var(
    --border-width-md,
    var(--border-width-sm, var(--border-width-base))
  );
}
```
