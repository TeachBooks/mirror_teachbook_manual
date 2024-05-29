# Anatomy of a Jupyter Book

To build a Jupyter Book, you need three things:

1. A configuration file
2. A table of contents
3. Content

## The configuration file
The configuration file of Jupyter Books is named `_config.yml`. It mainly contains settings that apply when building the book.  Here is a basic example of a configuration file, taken from this book:

```yml
title: Jupyter Book Manual
author: Interactive Textbooks CiTG
logo: images/TUDelft_logo_rgb.png

execute:
  execute_notebooks: auto

sphinx:
  extra_extensions:
  - sphinx_inline_tabs
```

Technically speaking, a `_config.yml` file is not required to build a Jupyter Book. If you don't make one, `jupyter book` will just use all default values. However, you should make a configuration file with at least the following settings:

- `title`: the title of your book, which appears on the top-left of every page, under the logo.
- `author`: authors of the book, which appears in the bottom margin of every page.
- `logo`: (relative) path to the logo of your book (optional).

In addition, the following option can also be useful:

- `execute_notebooks`: turn on/off the execution of Jupyter Notebooks during the build process. On by default. If you perform heavy computations in your notebook (machine learning, FEM models, et cetera), you might be better off running the notebooks on a more powerful machine as opposed to the CI/CD server. To turn it off, specify the value `'off'`. You can also exclude specific notebooks by creating exclude patterns in the filenames. For more info, see the [Jupyter Book documentation](https://jupyterbook.org/en/stable/content/execute.html#exclude-files-from-execution).


```{warning}
The coniguration and table of contents files are in YAML format (short for YAML Ain't Markup Language). YAML has a specific syntax, which can cause some errors if you don't adhere to it. Just like Python, indentation is very important. You can find an overview of the syntax [here](https://en.wikipedia.org/wiki/YAML#Syntax).
```

## The table of contents

The table of contents (`_toc.yml`) file is where you define the structure of your book. You can organize content in *parts*, *chapters*, and *sections*. This is what a table of contents could look like:

```yml
- format: jb-book
- root: intro

chapters:
- file: chapter_1
  sections:
  - file: subsection_1
  - file: subsection_2
- file: chapter_2

et cetera...
```

`root` is the landing page of your book. It will be the first page that people see when they visit the book. You can include files by providing their *relative* path (so the location with respect to `_toc.yml`). These files can be a combination of Markdown, Jupyter Notebooks, and Restructured Text. The example above does not have parts, so the menu on the left will consist of just a list of the chapters. You can also group chapters in parts like this:

```yml
- format: jb-book
- root: <homepage>

parts:
- caption: Part 1
  chapters:
  - file: chapter_1
    sections:
    - file: subsection_1
    - file: subsection_2
  - file: chapter_2
- caption: Part 2
  chapters:
  - file: chapter_3

et cetera...
```