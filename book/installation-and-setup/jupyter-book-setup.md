# Build your book: JupyterBook

```{admonition} User types
:class: tip
This page is useful for user type 5.
```

Jupyter Book is a regular Python package which converts our content into a website. It's part of all of the `requirements.txt` files for a book repository.

## Build a book

As soon as you've installed your book environment with jupyter-book you can build your book locally. The official [jupyter-book](https://jupyterbook.org/en/stable/basics/build.html) documentation is quite extensive. Only two notes: first navigate to the directory where your book is to leave out the `path-to-book` and use `--all` whenever building a book to make sure the table of contents fully updates:

```
jupyter-book build <path-to-book> --all
```

## View the book locally

Once the build process is completed successfully, you will see the file location in your terminal output. Simply open this in the browser (you may have to copy/paste).

```{admonition} Tip
:class: tip, dropdown
Bookmark the (local) file location for easy access!
```

(setup-local-server)=
## View the book using a local webserver

Some features like JupyterLite and Grasple only work when a webserver serves the HTML content for a book. Rather than building the book in your repository and updating the website on the internet, you can use a local webserver to view the book:
1. Start a server from the command line with: `python -m http.server -b 127.0.0.1` (add ` &` if you want to keep using the terminal for other tasks).
2. Port 8000 is usually used by default, but depending on your OS it will tell you in the output.
3. To visit your site, just enter the address in your web browser, followed by a colon, and then the port number. By default, that would be: `127.0.0.1:8000`.
4. You will get a website that looks like a file browser, to visit your site just navigate to `book/_build/html/` (if you've started this command from this folder you see the book immediately
5. You may need to reload the page once the rebuild is complete. You can do this on Chrome by right-clicking somewhere on the page, select \"Inspect\", open the \"Network\" tab, then reload with `CTRL+R`. Or try `ctrl`+`F5`\n"
6. All interactive features like the JupyterLite consoles, Grasple/H5p iframe exercises, Sphinx-thebe python interactivity and HTML/Javascript elements should now work as well.
