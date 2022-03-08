---
published: false
---
# Reusables

Reusables contains chunks of content that can be reused in other files. You can also include variables in reusable text. For more information, see [Variables](_data/variables/README.md).

To reuse a chunk of content in the reusables folder, insert a Liquid tag like the following on another markdown page where you want the reused content to display: `{% include reusables/filename.md %}`

For example, if you want to reuse the content in the `example.md` file in the reusables folder, the markdown file you are adding it to would look like the following:
```
# Heading

Lorem ipsum. {% include reusables/example.md %}

## Heading 2
```
