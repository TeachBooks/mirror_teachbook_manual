# Embedding Grasple question

[Grasple](https://app.grasple.com/) gives you an embed code for each exercise which looks like this, which can be added cirectly to your markdown-file.
```html
<iframe height="560" src="https://embed.grasple.com/exercises/767782d5-023a-4b49-a1f3-874fca626c8e?id=79907" title="Grasple Exercise 79907" width="100%" allow="clipboard-read; clipboard-write"></iframe>
```

The embed link is created for an exercise under 'More'- 'Embed Exercise'

This iframe can be embedded into your Jupyter book. Remark: it doesn't display locally in VScode or in the build file, only on the hosted version. The code shown above gives:
<iframe height="560" src="https://embed.grasple.com/exercises/767782d5-023a-4b49-a1f3-874fca626c8e?id=79907" title="Grasple Exercise 79907" width="100%" allow="clipboard-read; clipboard-write"></iframe>

More information on Grasple and the support of TU Delft can be found on: [Teaching Support - Educational Tools - Grasple](https://www.tudelft.nl/en/teaching-support/educational-tools/grasple)

## Replace iframe by QR code for printed version
Dani Balague Guardia created an [extension](https://github.com/dbalague/sphinx-grasple) which allows you to easily add Grasple question with some formatting and, more importantly, the creation of QR codes in the PDF version of the page. This leads to the source link of the iframe.

The grasple exercise as shown above can now be added as follows in your markdown file:
```markdown
::::{grasple}
:url: https://embed.grasple.com/exercises/767782d5-023a-4b49-a1f3-874fca626c8e?id=79907
:label: grasple_exercise_1
:dropdown:
:description: Example of exercise which goes along

::::
```

This leads to the following html in the Jupyter book. Remark: again, the iframe doesn't locally in VScode or in the build file, only on the hosted version. 
<div class="grasple admonition" id="grasple_exercise_1">

<p class="admonition-title"><span class="caption-number">Grasple Exercise 1 </span></p>
<div class="section" id="admonition-content">
<div class="side-by-side docutils container">
<div class="description-container docutils container">
<p></p><p>Example of exercise which goes along</p>
<p></p>
</div>
</div>
<details class="dropdown"><summary>Show/Hide Content</summary><iframe src="https://embed.grasple.com/exercises/767782d5-023a-4b49-a1f3-874fca626c8e?id=79907" width="100%" height="400px"></iframe></details></div>
</div>

In the PDF this leads to:
```{figure} ../images/Grasple_pdf.png
```


The extension requires an extension of the `config.yml` file:
```markdown
  extra_extensions:
  - sphinx_grasple
  - sphinx.ext.imgconverter
```

The extension should be installed both locally and on the server.