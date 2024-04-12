# Making comments on the website with Hypothesis

Hypothesis is a third-party application that allows anyone to make publicly visible comments on a website (once you create a free account). This section explains how to use and install the extension; an alternative is Utterances, but this is only available for GitHub-hosted books.

Firstly, you will need to open your interactive text book in your browser. Take as example the [MUDE](https://mude.citg.tudelft.nl/book/intro.html) book.

If you look at the top right of the page, you will see three icons, an arrow, an eye and a note-pad. Clicking on the arrow will open the extension. The extension we are currently using is called Hypothesis. In order to use it you will have to make an account. Through the extension you will be able to highlight relevant sections and write notes and annotations. Comments on the content of the book can be submitted by making annotations and posting them to group called Feedback!

## Set up Hypothesis in your book
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

## Using Hypothesis

In this case it is easier to learn by doing! Hypothesis has been enabled for this book: click the small arrow at the top right of the page to view the annotations. Create an account and log in if you would like to reply or make your own annotations. You can also highlight text, but this is not publicly visible, it is only for your own reference.

Note that the annotations are only visible for the page that you are currently viewing. You can see all the Annotations on a website by opening the "Public" menu at the top of the dialog pane, selecting "Public" again in the drop-down, then "View group activity." Make sure you type in the URL to search (e.g., `teachbooks.tudelft.nl/jupyter-book-manual`).

% THIS IS ADDED TO PAGE AS ANNOTATION:
% This is an example Annotation. Note that annotations are publicly visible, but you must create an account and be logged in to reply or make your own. You can make highlights, but they are only visible to you, not everyone. You can also see all the Annotations on a website by opening the "Public" menu at the top of this dialog pane, selecting "Public" again in the drop-down, then "View group activity." Make sure you type in the URL to search (e.g., `teachbooks.tudelft.nl/jupyter-book-manual`).

```{admonition} Be careful of changing website URL's!
:class: warning

Annotations created using the Hypothesis feature are linked to the specific URL of a website, so keep this in mind if you move a book, or change the file name, as you could lose track of your work! Note that while changing the URL may make a page invisible, you can still find the annotations using the _View group activity_ feature.

For example, if there is no annotation visible on this page, the URL probably changed!
```