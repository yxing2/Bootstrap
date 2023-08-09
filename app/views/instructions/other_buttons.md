Great! Now we have a nice style rule that we can use to make things look like buttons. We'll usually use this rule on `<a>` and `<button>` elements, since those are the two elements that users traditionally click on.

Move your style rule into `public/css/my_styles.css`, and then add:

```html
<link rel="stylesheet" href="/css/my_styles.css">
```

to `app/views/layouts/application.html.erb` so that we can easily re-use it across any of our pages.

---

It would be nice to have a few more colors for buttons in our tool belt; to use for, say, delete or edit or "buy now!" type of links.

<a class="btn btn-primary mb-2">Primary</a>
<a class="btn btn-secondary mb-2">Secondary</a>
<a class="btn btn-success mb-2">Success</a>
<a class="btn btn-danger mb-2">Danger</a>
<a class="btn btn-warning mb-2">Warning</a>
<a class="btn btn-info mb-2">Info</a>

It might be nice to also have button variants that are less intrusive:

<a class="btn btn-outline-primary mb-2">Primary (unobtrusive)</a>
<a class="btn btn-outline-secondary mb-2">Secondary (unobtrusive)</a>
<a class="btn btn-outline-success mb-2">Success (unobtrusive)</a>
<a class="btn btn-outline-danger mb-2">Danger (unobtrusive)</a>
<a class="btn btn-outline-warning mb-2">Warning (unobtrusive)</a>
<a class="btn btn-outline-info mb-2">Info (unobtrusive)</a>

Try adding style rules to `my_styles.css` for button variants that look sort of like this. 

Try to make it happen in <a href="/levels/other_buttons" target="_blank">this page</a>. You'll find the code to edit in `app/views/levels/other_buttons.html.erb`.

---

When you're ready to move on, go to [the next exercise](/instructions/add_bootstrap).
