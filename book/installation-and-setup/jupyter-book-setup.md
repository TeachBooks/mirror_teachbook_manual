# Jupyter Book

Jupyter Book is just a regular Python package, so it can be installed by using `pip` or `conda`: 

    pip install jupyter-book

Nevertheless, it's always a good idea make a fresh `conda` environment when starting a new project.

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
4. You will get a website that looks like a file browser, to visit your site just navigate to `book/_build/html/`.
5. The JupyterLite consoles or Grasple iframe exercises should now work as well.
