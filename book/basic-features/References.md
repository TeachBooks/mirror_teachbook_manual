# References

To make references to figures, equations et cetera, use the following syntax:

- For figures, use: ``{numref}`Figure {number} <name of the figure>` ``
- For equations, use: ``{eq}`<equation label>` ``
- For citations, use: ``{cite:p}`<bibtex_entry>` `` for a citation between parenthesis, or ``{cite:t}`<bibtex_entry>` `` for an inline citation.

**Examples**

As can be seen in ``{numref}`Figure {number} <fig-gitpush>` `` (result) {numref}`Figure {number} <fig-gitpush>`, not related to {eq}`<eq:Newton>`

```{figure} ../images/git-push.png
---
width: 50%
name: fig-gitpush
---
Some caption here
```

$$ F = m\cdot a $$(eq:Newton)



