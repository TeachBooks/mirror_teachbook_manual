# Home

This is an introduction to Git, VS Code and Jupyter Books for teachers of MUDE. Topics that are covered include: installing Git and VS Code, setting up SSH-keys for GitLab, the basic structure of Jupyter Books and basic Git workflows. 

## List of things to add

Robert created this list to keep track of things that should be in our manual. Especially the small problems we have run into in MUDE and other projects.

- use the right HTML tags for images (described {ref}`here <image-tag-example>`)
- watch out for `png` versus `PNG`
- trick for creating download link for PDFs (see Archive weekly summary pages); requires an `eval-rst` admonition, which can't be placed inside some objects (maybe someone can test this, and see if an inline option is available)
- 2 interesting comments from Quinten about MyST extensions in [this GL Issue](https://gitlab.tudelft.nl/mude/archive-2022/-/issues/25#note_163123)

(image-tag-example)=
### Example of image tag

This was found in the MUDE Archive, [Issue 29](https://gitlab.tudelft.nl/mude/archive-2022/-/issues/29).

It looks like the `figure` tag
```
<figure>
  <IMG SRC='...'>
</figure>
```
is not supported. but the `img` tag is:
```
<img src="...">
```
see examples [here](https://jupyterbook.org/en/stable/content/figures.html) (no `figure` tag mentioned for HTML, only Markdown) 
