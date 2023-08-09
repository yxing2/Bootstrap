Even if I don't need any of Bootstrap's components or utilities, there's one part that I use on almost every app I write: Bootstrap's responsive **grid**.

The grid is a set of classes that helps us lay out content on the page. They are conceptually very similar to `<table>`, `<tr>`, and `<td>`s with `colspan`. For example, imagine we wanted our page to be laid out like this:

<table class="table table-bordered">
  <tr>
    <td colspan="4">
      <div  class="bg-primary text-center">1/3</td>
    </td>
    <td colspan="4">
      <div  class="bg-primary text-center">1/3</td>
    </td>
    <td colspan="4">
      <div  class="bg-primary text-center">1/3</td>
    </td>
  </tr>

  <tr>
    <td colspan="6">
      <div class="bg-info text-center">1/2</div>
    </td>
    <td colspan="6">
      <div class="bg-info text-center">1/2</div>
    </td>
  </tr>

  <tr>
    <td colspan="8">
      <div class="bg-warning text-center">2/3</div>
    </td>
    <td colspan="4">
      <div class="bg-primary text-center">1/3</td>
    </td>
  </tr>

  <tr>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
  </tr>

  <tr>
    <td colspan="12">
      <div class="bg-secondary text-center">1/1</div>
    </td>
  </tr>
</table>

One way to achieve the above layout would be to encapsulate the entire page in a `<table>` element and put our content within `<tr>`s and `<td>`s. (This is how layout was done on the web for many years.)

Try to imagine how you would achieve the above using a `<table>`. Here's the actual code:

```html
<table class="table table-bordered">
  <tr>
    <td colspan="4">
      <div class="bg-primary text-center">1/3</td>
    </td>
    <td colspan="4">
      <div class="bg-primary text-center">1/3</td>
    </td>
    <td colspan="4">
      <div class="bg-primary text-center">1/3</td>
    </td>
  </tr>

  <tr>
    <td colspan="6">
      <div class="bg-info text-center">1/2</div>
    </td>
    <td colspan="6">
      <div class="bg-info text-center">1/2</div>
    </td>
  </tr>

  <tr>
    <td colspan="8">
      <div class="bg-warning text-center">2/3</div>
    </td>
    <td colspan="4">
      <div class="bg-primary text-center">1/3</td>
    </div>
  </tr>

  <tr>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
    <td colspan="2">
      <div class="bg-danger text-center">1/6</div>
    </td>
  </tr>

  <tr>
    <td colspan="12">
      <div class="bg-secondary text-center">1/1</div>
    </td>
  </tr>
</table>
```

Notice the key trick: using a **12 column table**. Since 12 divides so nicely (by 6, 4, 3, 2, and 1), it's easy to subdivide our rows into appropriately sized chunks using `colspan`.

This worked well for the early days of the web, but now that we have a plethora of screen sizes, hijacking the `<table>` element for layout doesn't work so well. For one thing, the cells aren't sized exactly right; their content determines how wide they are, and the content of a column can squish the size of a different column. For another thing, tables usually get too cramped on phone screens, or overflow.

In the modern web, we use CSS for layout. **But the conceptual approach is the same** — we're still going to design our pages as a 12 column "table". The code, however, will evolve to this:

```html
<div class="container">
  <div class="row">
    <div class="col-md-4">
      <div class="bg-primary text-center">1/3</div>
    </div>
    <div class="col-md-4">
      <div class="bg-primary text-center">1/3</div>
    </div>
    <div class="col-md-4">
      <div class="bg-primary text-center">1/3</div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-6">
      <div class="bg-info text-center">1/2</div>
    </div>
    <div class="col-md-6">
      <div class="bg-info text-center">1/2</div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-8" >
      <div class="bg-warning text-center">2/3</div>
    </div>
    <div class="col-md-4">
      <div  class="bg-primary text-center">1/3</div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="bg-secondary text-center">1/1</div>
    </div>
  </div>
</div>
```

What are the differences between the code for the two approaches?

- The `<table>` became a `<div class="container">`.
- The `<tr>`s became `<div class="row">`s.
- The `<td colspan="*">` became `<div class="col-md-*">`.

Bootstrap includes the `container`, `row`, and `col-md-*` classes; so the above code produces the following:

<div class="container">
  <div class="row">
    <div class="col-md-4">
      <div class="bg-primary text-center">1/3</div>
    </div>
    <div class="col-md-4">
      <div class="bg-primary text-center">1/3</div>
    </div>
    <div class="col-md-4">
      <div class="bg-primary text-center">1/3</div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-6">
      <div class="bg-info text-center">1/2</div>
    </div>
    <div class="col-md-6">
      <div class="bg-info text-center">1/2</div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-8" >
      <div class="bg-warning text-center">2/3</div>
    </div>
    <div class="col-md-4">
      <div  class="bg-primary text-center">1/3</div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
    <div class="col-md-2">
      <div class="bg-danger text-center">1/6</div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="bg-secondary text-center">1/1</div>
    </div>
  </div>
</div>

So far, so good, but it doesn't seem like a _huge_ benefit over `<table>`s. But! Try resizing your browser window and observe the behavior of the cells.

The Bootstrap grid is **responsive** out of the box. That means it detects the width of the viewport and automatically resizes itself.

I always use the Grid so that my apps look decent no matter whether the user is on a laptop, a TV, or a phone.

---

Get a feel for using the Grid by attempting the following exercise:

- <a href="/targets/grid" target="_blank">Target</a>.
- Write code in `app/views/levels/grid.html.erb`.
- Preview your output <a href="/levels/grid" target="_blank">here</a>.

---

Next, let's [put Bootstrap together with ERB](/instructions/dynamic_list_group).
