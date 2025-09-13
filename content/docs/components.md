+++
layout = "LayoutDocumentationPage"
title = "Components"

[[collection]]
after = "docs/front-matter"
name = "docs"
parent = "docs/index"
+++

You can create your own components and use them in both the markdown and layout files in the exact same way. 

For example, below is a Note component:

<Note>
    Hello, I am a note.
</Note>

And this is the code for the Note component (you will also find it in the `components/Note.rhai` file):

```html label:"rhai"
fn template(context, props, content) {

  component {
    <div
      class={if "type" in props {
        `formatted-text__note formatted-text__note--${props.type}`
      } else {
        "formatted-text__note"
      }}
    >
      {content}
    </div>
  }
}
```
