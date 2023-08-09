Imagine we have a simple `<span>`, like this:

```html
<span>Click me!</span>
```

And we want to make it look like a button, like this?

<span class="btn btn-lg btn-primary">Click me!</span>

Notice a few things about the styles for this button:

- It has slightly [rounded corners](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius).
- It gets subtly darker when you [hover over it](https://developer.mozilla.org/en-US/docs/Web/CSS/:hover).
- There is also an [inset shadow effect](https://cssgenerator.org/box-shadow-css-generator.html) when you hover over it.
- It gets even darker when you [click on it](https://developer.mozilla.org/en-US/docs/Web/CSS/:active).

Try to make it happen in <a href="/levels/primary_button" target="_blank">this page</a>. You'll find the code to edit in `app/views/levels/primary_button.html.erb`.

---

When you're happy with your button, go to [the next exercise](/instructions/other_buttons).
