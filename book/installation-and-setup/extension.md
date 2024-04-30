# Making comments on the website

This section will explain how to use the extension hypothesis in order to make comments, an alternative is Utterances but this is only available for GitHub-hosted books.

Firstly, you will need to open your interactive text book in your browser. Take as example the [MUDE](https://mude.citg.tudelft.nl/book/intro.html) book.

If you look at the top right of the page, you will see three icons, an arrow, an eye and a note-pad. Clicking on the arrow will open the extension. The extension we are currently using is called Hypothesis. In order to use it you will have to make an account. Through the extension you will be able to highlight relevant sections and write notes and annotations. Comments on the content of the book can be submitted by making annotations and posting them to group called Feedback!

## Set up hypothesis in your book
Add this to `_config.yml`. Need to create an account.

```
html:
  comments:
    hypothesis: true
```

```{admonition} Tips
:class: tip

- use {ref}`remove_from_publish` to enable in Draft book only
```