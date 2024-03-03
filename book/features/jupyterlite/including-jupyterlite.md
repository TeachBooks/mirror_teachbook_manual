# How to add `JupyterLite` to a page

There are three different `JupyterLite` directives that you can include in your web page:

1. `retrolite`: this embeds the old Jupyter Notebook environment in your page. This is a good one if you want students to program things on you page, since it allows students to edit and execute cells.
2. `jupyterlite`: this embeds a JupyterLab environment in your page. 
3. `replite`: this variant provides an environment similar to the regular `IPython` kernel. 

Below are examples demonstrating how to include each variant. Note that the `jupyterlite-sphinx extension` is designed for use with `.rst` files (Restructured Text). Luckily, `MyST` provides a convenient directive that allows us to include Restructured Text content in a regular `.md` file. 


```{admonition} Note
:class: tip
This feature doesn't display in a book that is viewed locally via your browser, unless you set up a local webserver (instructions [here](setup-local-server)).
```

## `retrolite`

To embed a Jupyter Notebook environment in your book, include the following directive:

    ```{eval-rst}
    .. retrolite::
    ```

You can also include you own notebook for students to work with. To do so, add it to the directive like this:

    ```{eval-rst}
    .. retrolite:: wave.ipynb
    ```

Finally, there are some formating options available:

    ```{eval-rst}
    .. retrolite:: wave.ipynb
        :width: 100%            # The width of the box
        :height: 500px          # The height of the box
        :prompt: Click me!      # Instead of loading the kernel immediately, show a button 
                                  that activates the kernel on clicking. 
        :prompt_color: #00aa42  # Color of the prompt button
    ```

Here is the final result of the directive above:

```{eval-rst}
.. retrolite:: wave.ipynb
    :width: 100%
    :height: 500px
    :prompt: Click me!
    :prompt_color: #00aa42
```

## `jupyterlite`

To embed a JupyterLab environment in your book, simply change out `retrolite` for `jupyterlite`:

    ```{eval-rst}
    .. jupyterlite::
        :width: 100%
        :height: 500px
        :prompt: Click me!
        :prompt_color: #00aa42
    ```

Here is the final result:

```{eval-rst}
.. jupyterlite:: 
    :width: 100%
    :height: 500px
    :prompt: Click me!
    :prompt_color: #00aa42
```

## `replite`

The `replite` directive provides a REPL environment (Read-Evaluate-Print-Loop) that is very similar to `IPython` in the terminal. Here's how you can include it:

    ```{eval-rst}
    .. replite::
        :width: 100%
        :height: 500px
        :prompt: Click me!
        :prompt_color: #00aa42
    ```

You can't include a notebook in a `replite` environment, but you can pass it some code that executes once the kernel is loaded:

    ```{eval-rst}
    .. replite::
        :width: 100%
        :height: 500px
        :prompt: Click me!
        :prompt_color: #00aa42

        print("Hello, world!")
    ```

Here's what it looks like:

```{eval-rst}
.. replite::
    :width: 100%
    :height: 500px
    :prompt: Click me!
    :prompt_color: #00aa42

    print("Hello, world!")
```