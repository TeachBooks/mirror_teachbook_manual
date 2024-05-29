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

# Videos

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
