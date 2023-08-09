Fortunately for us, there are some brilliant, generous developers who have also built up a "tool belt" of style rules for common use-cases. They called their stylesheet `bootstrap.css`, and they've shared it for free.

Let's add their stylesheet to our app. In `app/views/layouts/application.html.erb`, add this:

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.css">
```

You can <a href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.css" target="_blank">visit the URL of the stylesheet</a> if you want to, but it's a huge file and hard to understand just by reading the code. Let's look at some examples together instead.

---

For adding buttons of the variety that we just designed by hand, the authors of Bootstrap have included classes like this:

```html
<a class="btn btn-primary">Primary</a>
<a class="btn btn-secondary">Secondary</a>
<a class="btn btn-success">Success</a>
<a class="btn btn-danger">Danger</a>
<a class="btn btn-warning">Warning</a>
<a class="btn btn-info">Info</a>
<a class="btn btn-outline-primary">Primary (unobtrusive)</a>
<a class="btn btn-outline-secondary">Secondary (unobtrusive)</a>
<a class="btn btn-outline-success">Success (unobtrusive)</a>
<a class="btn btn-outline-danger">Danger (unobtrusive)</a>
<a class="btn btn-outline-warning">Warning (unobtrusive)</a>
<a class="btn btn-outline-info">Info (unobtrusive)</a>
```

After you've `<link>`ed `bootstrap.css` in the application layout, try copy-pasting this code into your `other_buttons.html.erb` file and see what happens.

---

How did I know what these class names were? I certainly didn't read the 10,000+ line stylesheet to find out. Instead, I browsed through Bootstrap's (excellent) docs. <a href="https://getbootstrap.com/docs/5.3/components/buttons/" target="_blank">Check out their page for Buttons.</a>

My process is usually:

- Make a git commit.
- Copy-paste the example code from the Bootstrap docs.
- Auto-indent.
- Replace the example content with my own content.

After a lot of practice, I have two or three of the classes memorized; but mostly I still rely heavily on the docs, Git commits, trial, and error.

---

Next, let's [look at some utility classes that Bootstrap includes](/instructions/utility_classes).
