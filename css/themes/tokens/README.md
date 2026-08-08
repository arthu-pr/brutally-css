# Generated tokens — do not hand-edit

Everything under `css/` in this folder is generated output from
[`unholy-design-tokens`](https://github.com/arthur-plazanet/unholy-design-tokens)
(`/home/macbookpro/www/design/unholy-design-tokens` locally), a separate
Style Dictionary-based token pipeline. It's vendored here (committed,
not gitignored) so the playground still builds without cloning and
running that repo separately.

To regenerate, from the `unholy-design-tokens` repo:

```sh
pnpm exec tsx bin/build-tokens.ts <path-to-brutally-css>/css/themes/tokens
```

If you need to change a token value, change it at the source
(`src/tokens/`) in `unholy-design-tokens` and regenerate — edits made
directly to the files in this folder will be overwritten.
