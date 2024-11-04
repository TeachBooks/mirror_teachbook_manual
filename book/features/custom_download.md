# Page download options

```{admonition} User types
:class: tip
This section is useful for user type 4-5.
```

You can control the download option of the book in two ways:
 - Disabling downloading using cell tags `disable-download-page`
 - Add / replace download link with custom link using `spinhx-download-link-replacer`

## 1. Disabling download
If you add `disable-download-page` as a cell tag to a cell in a python notebook, the download button ({fa}`download`) will disappear from the topright corner. The cell tag can be added to any code cell in the notebook. This function might be handy if your page includes code which you don't want the students to see. Be aware that this also removes the option to download a PDF of the page.

## 2. Add/replace download link
The download link {fa}`download` -->  {fa}`file`{guilabel}`.ipynb` can be replaced by using the following code in any markdown / notebook file:
````md
```{custom_download_link} <link_target>
:text: "Custom text"
:replace_default: "True"
```
````

An explanation of the options of this command is given on https://gitlab.tudelft.nl/mude/sphinx-download-link-replacer.

A potential application of this functionality is when creating a page in which students have to do some coding. Downloading the page allows the student to save their work and work with their local environment. However, the original source file might include code (jupyterbook formatting, widgets, answers) which is not necessary for students. You can make a copy of the notebook file without these elements and replace the {fa}`file`{guilabel}`.ipynb` link to this custom notebook file. Furthermore, you can add any additional data as an additional {fa}`file`{guilabel}`.zip` file. 


### 2.1. Installation instructions

```{include} book/external/Download-Link_Replacer/README.md

```
book\external\Download-Link-Replacer\README.md