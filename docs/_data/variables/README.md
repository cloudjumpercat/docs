# Variables

Variables are short strings of reusable text. When you use a variable in a markdown file, the published output will display the variable's text. 

The YAML files in this directory each contain multiple variables. Variables are assigned in YAML files, and then Liquid syntax is used by Jekyll to render the variables correctly in the output.

To use a variable in a file, you must specify the Liquid syntax for that variable. For example, if your variable is located in the `docs/_data/variables/product.yml` file:

```yaml
# Example variable
example_variable: 'example'
```

You would include that variable in another file by using:

```
{{ site.data.variables.product.example_variable }}
```
**Note:** Variables are referenced using the following format: {{ site.data.foldername.filename.variablename }}

For example, the following would display as "See the following example" in the published output:

```markdown
See the following {{ site.data.variables.product.example_variable }}.
```

