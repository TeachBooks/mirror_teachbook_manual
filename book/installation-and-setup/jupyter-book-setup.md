# Build your book: JupyterBook

```{admonition} User types
:class: tip
This page is useful for user type 5.
```

<a href="https://jupyterbook.org/"><img  style="display:inline-block; height:1.5em; width:auto; transform:translate(0, -0.15em)" src="../images/logo-wide.svg" alt="Jupyter book"></a> is a regular Python package which converts our content into a website. It's part of all of the `requirements.txt` files for a book repository. At TeachBooks we developed a Python package called `teachbooks` which takes over the these features and adds [additional features](/book/features/overview.md). One of those additional features, for example, is the workflow to GitHub Pages. 

Concretely, this means that the teachbooks package can be used to replace the <a href="https://jupyterbook.org/"><img  style="display:inline-block; height:1.5em; width:auto; transform:translate(0, -0.15em)" src="../images/logo-wide.svg" alt="Jupyter book"></a> package when calling these features. You could think of it as `jupyter-book` being a dependency of `teachbooks`.

```{admonition} Note
:class: tip
Don't forget to add the package `teachbooks` in the `requirements.txt` files in your book repository and to have it installed in your working environment (`pip install teachbooks`).
```

## Build a book

As soon as you've installed your book environment with jupyter-book you can build your book locally. The official <a href="https://jupyterbook.org/"><img  style="display:inline-block; height:1.5em; width:auto; transform:translate(0, -0.15em)" src="../images/logo-wide.svg" alt="Jupyter book"></a> documentation is quite extensive. Only two notes: first navigate to the directory where your book is to leave out the `path-to-book` and use `--all` whenever building a book to make sure the table of contents fully updates:

```
teachbooks build <path-to-book> --all
```
Alternatively:
```
jupyter-book build <path-to-book> --all
```

## View the book locally

Once the build process is completed successfully, you will see the file location in your terminal output. Your terminal will look something like this. Simply open this in the browser (you may have to copy/paste).

```{figure} ../figures/Terminal.PNG
---
width: 80%
name: terminal
align: center
---
Terminal
```

```{admonition} Tip
:class: tip, dropdown
Bookmark the (local) file location for easy access!
```
(setup-local-server)=
## View the book using a local webserver

```{admonition} Note
:class: tip
If your book consists only of markdown files the local python server is not necessary and you can just view the book locally.
```

Some features like JupyterLite and Grasple only work when a webserver serves the HTML content for a book. Rather than building the book in your repository and updating the website on the internet, you can use a local webserver to view the book:
1. Make sure you have the TeachBooks Python package installed (e.g., `pip install teachbooks`)
2. Start a server from the command line with: `teachbooks serve`
3. The command line output will return the URL where you can access your book
4. You should reload the page if you are editing and rebuilding the book. You can try `CTRL+R` `ctrl`+`F5`. If this does not work, on Chrome try right-clicking somewhere on the page, select \"Inspect\", open the \"Network\" tab, then reload with `CTRL+R`. 
5. All interactive features like the JupyterLite consoles, Grasple/H5p iframe exercises, Sphinx-thebe python interactivity and HTML/Javascript elements should now work as well.
6. When you no longer need the server, simply run `teachbooks serve stop`

### How to create a local server without the TeachBooks package

Here is how to set up a local server with only standard Python libraries:

1. Start a server from the command line with: `python -m http.server -b 127.0.0.1` (add ` &` if you want to keep using the terminal for other tasks).
2. Port 8000 is usually used by default, but depending on your OS it will tell you in the output.
3. To visit your site, just enter the address in your web browser, followed by a colon, and then the port number. By default, that would be: `127.0.0.1:8000`.
4. You will get a website that looks like a file browser, to visit your site just navigate to `book/_build/html/` (if you've started this command from this folder you see the book immediately)