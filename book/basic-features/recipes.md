---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.10.3
kernelspec:
  display_name: Python 3 (ipykernel)
  language: python
  name: python3
---


# Markdown and Notebook recipes for the MUDE Jupyter Book

## Figures 

To add a figure, just copy the figure to the correct directory. Then, in your markdown file, include the figure as follows:

    ```{figure} <figurename>.png/.jpg
    ---
    height/width: <height or width in pixels>
    name: <name of the figure>
    ---
    <Figure caption>
    ```

Or you can use the figure form below where you can specify all information and the code is produced for you:

<div id="figuur_formulier">

</div>
<div id="listContainer">
  
</div> 


You can find more documentation on including figures [here](https://jupyterbook.org/en/stable/content/figures.html).





## Videos

Videos uploaded to YouTube can be embedded in the Jupyter Book. There are several ways to do so:

**1.** To embed them in the Jupyter Book, first obtain the embedding link of the video. In order to do so, go to the *YouTube* page of the video (so not the Brightspace page), then click *share* in the description box. There should be a button *embed*, click that. Copy the HTML code that appears in the panel. Then, to embed the video, use the following 

```
    <iframe
    width="560"   
    height="315"
    src="https://www.youtube.com/embed/UCb-b82tzLo?"
    align="center"
    frameborder="0"
    allowfullscreen
    ></iframe>
```

This HTML-iframe code can be directly included in the markdown file (no need to create a code-cell).

Resulting in the video below:<br>
    <iframe
    width="560"   
    height="315"
    src="https://www.youtube.com/embed/UCb-b82tzLo?"
    align="center"
    frameborder="0"
    allowfullscreen
    ></iframe>

**2.** The above solution can be 'upgraded', setting a scaling of the video with the width of the screen and align it to the center:
```
    <div style="display: flex; justify-content: center;">
    <div style="position: relative; width: 70%; height: 0; padding-bottom: 56.25%;">
        <iframe
            src="https://www.youtube.com/embed/YDBr1Lof_mI?si=RhTC31XHv-6gL4Kl"
            style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen
        ></iframe>
    </div>
    </div>
```
With the resulting output:
<div style="display: flex; justify-content: center;">
    <div style="position: relative; width: 70%; height: 0; padding-bottom: 56.25%;">
        <iframe
        src="https://www.youtube.com/embed/YDBr1Lof_mI?si=RhTC31XHv-6gL4Kl"
        style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
        ></iframe>
    </div>
</div>

**3.** Another option is to use a python coding cell. As this code cell should be run when the book is made, you have to change the config file and set `execute_notebooks:` to force. This comes with the downside that it takes considerable more time to deploy the book.
````
    ```{code-cell} ipython3
    :tags: [remove-input]
    from IPython.display import YouTubeVideo
    VideoWidth=600
    YouTubeVideo("YDBr1Lof_mI", width=VideoWidth, align='center')
    ```
````

Moreover, it requires one to have this code at the top of your markdown file:
```
    ---
    jupytext:
    text_representation:
        extension: .md
        format_name: myst
        format_version: 0.13
        jupytext_version: 1.10.3
    kernelspec:
    display_name: Python 3 (ipykernel)
    language: python
    name: python3
    ---
```
Note that this is not needed when you use a .ipynb (jupyter notebook) file.


## Equations

Equations can be included in two ways: inline or display mode. To make an inline equation, just put the LaTeX equation between \$-signs. For example, `$F = m \cdot a$` produces: $F = m \cdot a$. 

Display mode equations (the ones that take up a whole line), can be inserted using double \$-signs, like this:

    $$
        F = m \cdot a
    $$

which will produce:

$$
    F = m \cdot a
$$

> **Warning**
> 
> Make sure there is a blank line *before* the display mode equations, otherwise it will render as inline and display the outer set of $$$ symbols. Also, the Euro symbol is not included in MathJax (see note below) and must be specified using `\unicode{0x20AC}` (note that it displays incorrectly in some Markdown renderers like VS Code).

To number the equations and refer in text, you need to provide a label to the equation. Just put the label between brackets and place it after the last \$\$, like this:

    $$
        F = m \cdot a
    $$ (newtons_second_law)

> **Note**
> 
> The Jupyter Book uses MathJax to display equations, which provides some LaTeX-like functionality, but not all! For example, the Euro symbol is missing, and packages like `siunitx` are not available (hint, use `\textrm{}` and `\textrm{}`). When something is not working, it's useful to search for MathJax-specific solutions (hint, include "mathjax" in your Google search).
> 
## Code blocks that produce figures

This can be done with notebooks, but it's not easy to make references to figures in notebooks. You can also place the code that produces and saves the figure in a separate `.py` file, and include that in a markdown file. Let's say we want to make a simple sine wave:

1. Place the code of the figure in a `.py` file. In this case, `sinewave.py` produces our figure. The code looks like this:
   
        import numpy as np
        import matplotlib.pyplot as plt

        x = np.linspace(0, 2*np.pi, endpoint=True)
        y = np.sin(x)

        plt.figure()
        plt.plot(x, y)
        plt.title('$y=\sin(x)$')
        plt.xlabel('$x$')
        plt.ylabel('$y$')
        plt.savefig('sinewave.svg')
        
   
> **Warning**
> 
> It is important that the name of the saved figure is **exactly** the same as the name of the Python script that generates it. Otherwise, the figure will not be generated by the Runner.

2. Test your code and make sure that the figure looks good. When you are ready to commit, place your code file in `book/code`.

The book uses a Matplotlib [style sheet](https://matplotlib.org/stable/tutorials/introductory/customizing.html); to see what this looks like on your local machin you will have to run `plt.style.use('../../config/matplotlibrc')` after importing Matplotlib. This should be done outside of the `*.py` file you are creating. Note that the example style sheet path assumes you are working in the `book/code` directory. It is recommended to preserve a list of figures using a notebook in `code_checks`, where there are also working examples. It is not necessary to commit `*.svg` files as these are cleaned when the book is generated.

3. Now include the code file by using the following directives:
   
        ````{toggle}
        ```{eval-rst}
        .. literalinclude:: ../sinewave.py
           :language: python
        ```
        ````
> **Note**
> 
> the outer most directive needs an extra tick mark for nested cases.

4. Include the figure as described above. Remember that figures are saved in the `book/figures` directory. We also use a naming convention of `*_py.svg` for figures generated from code, to easily include them in `.gitignore`, since they are built in the CI/CD pipeline.


## References

To make references to figures, equations et cetera, use the following syntax:

- For figures, use: ``{numref}`<name of the figure>` ``
- For equations, use: ``{eq}`<equation label>` ``
- For citations, use: ``{cite:p}`<bibtex_entry>` `` for a citation between parenthesis, or ``{cite:t}`<bibtex_entry>` `` for an inline citation.

## Code

There are two ways main ways to include code: directly within a Markdown file or as a Jupyter notebook. More methods are available, but we don't include them here. The first option is great for including simple calculations, or generating simple figures when an image file is not practical. *More will be added later.*

Note that if you are using a `*.ipynb` file or including a code snippet in a `*.md` file, including a blank line between the text and the closing three tick marks will generate an empty code box of one line in the Jupyter Book.

## Notebooks

When making notebooks for the Book, you might want to hide certain cells from the reader. For example, when including a simple figure generated from code or making a JupyterQuiz, we have to execute a code cell that generates the quiz. This code cell is ugly and distracting, so we do not want to render this in the final book. 

We can change how the compiler treats notebook cells by using cell tags. You can find a detailled explanation on cell tags [here](https://jupyterbook.org/en/stable/interactive/hiding.html?highlight=cell%20tag). Specifically, have a look at the sections on *hiding* cell inputs and *removing* cell inputs. 

The workflow of editing cell tags depends on your editor. If you're using Jupyter Lab, you can find instructions [here](https://jupyterbook.org/en/stable/content/metadata.html#jupyter-cell-tags). 

For example, the following tag is used to convert the code input into either a drop-down (`hide-input`) or make it invisible (replace `hide-input` with `remove-input`). Replace `input` with `output` to do the same with the cell output:
```
{
    "tags": [
        "remove-input"
    ]
}
```
Once a correctly typed tag is added to the notebook it will appear in the buttons at the top and can be added to other cells. Multiple tags can be added to the same cell, in which case the tags are separated by commas.
