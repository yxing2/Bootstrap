Another major benefit of Bootstrap is that it includes _utility classes_.

Classes like `btn-primary` wrap up several CSS properties (border radius, color, shadow, gradient, hover states). Utility classes, on the other hand, wrap up just one or two properties. They are intended to be "closer to the metal", almost like writing CSS by hand; but the provide a limited palette of options to choose from, which helps you compose more consistent designs.

For example, check out the following utitilies:

- <a href="https://getbootstrap.com/docs/5.3/utilities/background/" target="_blank">Background</a>
- <a href="https://getbootstrap.com/docs/5.3/utilities/text/" target="_blank">Text</a>
- <a href="https://getbootstrap.com/docs/5.3/utilities/spacing/" target="_blank">Spacing</a>
- <a href="https://getbootstrap.com/docs/5.3/utilities/shadows/" target="_blank">Shadows</a>
- <a href="https://getbootstrap.com/docs/5.3/utilities/flex/>" target="_blank">Flex</a>
- <a href="https://getbootstrap.com/docs/5.3/utilities/borders/" target="_blank">Border</a>
- <a href="https://getbootstrap.com/docs/5.3/utilities/opacity/" target="_blank">Opacity</a>
- <a href="https://getbootstrap.com/docs/5.3/utilities/sizing/" target="_blank">Sizing</a>

---

After skimming the above docs, try achieving the following:

- <a href="/targets/utility_classes" target="_blank">Target</a>.
- Write code in `app/views/levels/utility_classes.html.erb`.
- Preview your output <a href="/levels/utility_classes" target="_blank">here</a>.

---

I generally try to write as little CSS as possible; instead, if there isn't a pre-made component that does what I want, I do my best to assemble it out of the existing utility classes. That way, my spacing/colors/shadows/font size/etc stay consistent across my app.

Peruse the other Utilities in the left sidebar of the Bootstrap docs. When you're ready, let's move on and [check out some of my most frequently-used Bootstrap components](/instructions/frequently_used_components).
