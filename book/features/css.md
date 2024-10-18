# Change looks

It is possible to change the looks of the entire book by including some css code. Hereto, you have to include a _static folder where you can create your CSS file:

```
mybook/
├── _config.yml
├── _toc.yml
└── page1.md
└── _static
    └── TUD.css
```

The css file in this folder will automatically run when your book is build. The rules that you have specified in this file, for instance the color of the chapter titles, will be applied to the entire book.

For example, we can change the header colors to the [TU Delft's corporate design](https://www.tudelft.nl/en/tu-delft-corporate-design/components/colour), or change the fontstyle (commented out below).

```
h1 {
    color: rgb(0, 166, 214) !important;
}

h2 {
    color: rgb(0, 118, 194) !important;
}

h3 {
    color: rgb(12, 35, 64) !important;
}

<!-- 
body {
    font-family: "Times", sans-serif;
}
-->
```

```{warning}
Including a css can affect your lay out.
```