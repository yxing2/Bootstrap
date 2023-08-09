Here are some Bootstrap components that I use very frequently:

---

- <a href="https://getbootstrap.com/docs/5.3/components/list-group/" target="_blank">List group</a>
- <a href="https://getbootstrap.com/docs/5.3/components/card/" target="_blank">Card</a>
- <a href="https://getbootstrap.com/docs/5.3/components/modal/" target="_blank">Modal</a>
- <a href="https://getbootstrap.com/docs/5.3/components/navbar/" target="_blank">Navbar</a>

As you can see, the latter three include dynamic behavior and/or animations. This is awesome! One of the biggest benefits of Bootstrap is that it includes battle-tested JavaScript that produces these behaviors.

All we need to do is pull in Bootstrap's pre-written JavaScript, in addition to its CSS. Add the following to your line to your `app/views/layouts/application.html.erb` file:

```html
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
```

Then, try to read the docs and use the examples to achieve the following:

#### Card

- <a href="/targets/card" target="_blank">Target</a>.
- Write code in `app/views/levels/card.html.erb`.
- Preview your output <a href="/levels/card" target="_blank">here</a>.

#### Modal

- <a href="/targets/modal" target="_blank">Target</a>.
- Write code in `app/views/levels/modal.html.erb`.
- Preview your output <a href="/levels/modal" target="_blank">here</a>.

#### Navbar

- <a href="/targets/navbar" target="_blank">Target</a>.
- Write code in `app/views/levels/navbar.html.erb`.
- Preview your output <a href="/levels/navbar" target="_blank">here</a>.

---

Pretty amazing! There are a ton of other components to explore, at your leisure. To get you started:

- <a href="https://getbootstrap.com/docs/5.3/examples/cheatsheet/" target="_blank">Cheatsheet</a>: many of Bootstrap's components all one one page for quick perusal.
- <a href="https://getbootstrap.com/docs/5.3/examples/" target="_blank">Examples</a>: Examples of how to use components.

---

When you're ready, let's [move on and talk about the Bootstrap Grid](/instructions/grid).
