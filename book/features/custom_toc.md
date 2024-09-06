(remove-from-publish)=
# Exclude parts of book from published book

```{admonition} User types
:class: tip
This section is useful for user type 3-5.
```

A feature to enable viewing of work-in-progress (e.g., in the draft book) or testing of content (e.g., interactive programming pages) while preventing students from seeing it is available via the {ref}`teachbooks-package <TeachBooks Python package>`. Lines of text in a `*.yml` file can be removed prior to the book build process by surrounding the lines with a tag `REMOVE-FROM-PUBLISH`. For example, pages in a draft book (e.g., `main` branch) can be manually stripped out of the table of contents when a merge request from `main` to `publish` is made. This prevents the page being included in the published book. Pages marked with this feature are still visible in the draft book and books build from source on personal computers. Lines tagged in the configuration file `_config.yml` can be used in exactly the same manner. The tag is applied as follows:

```
format: jb-book
root: intro

parts:
  - caption: ...
    chapters: 
    - file: ...
      ...
# START REMOVE-FROM-PUBLISH
    - file: files_to_remove
# END REMOVE-FROM-PUBLISH
```
There is no limit to the number of stripped sections, they can be sequential and indentation does not matter.

To invoke the tag and remove content during the book build process, use the following optional argument when building the book with the `teachbooks` package:

```
teachbooks build --publish book
```

Note that `teachbooks build book` would build a book without stripping the tagged lines, just as `jupyter-book build book` would.

```{note}
The `REMOVE-FROM-PUBLISH` feature was originally deployed using Bash and Shell scripts in the pipeline of our book build processes. The MUDE book contained the scripts on the server, whereas the `interactivetextbooks-citg` contained this in the GitLab CI files or `*.sh` scripts. These workflows will eventually be replaced with a simplified pipeline setup (i.e., a GitLab CI file or GitHub workflow) that uses the commands `teachbooks build book` and `teachbook build --publish book` for the published and draft versions of the book, resepctively. We recommend you do the same. A working example can be found in our [Template repository workflow on GitHub](https://github.com/TeachBooks/deploy-book-workflow/blob/main/.github/workflows/deploy-book.yml) or in the [MUDE book on GitLab](https://gitlab.tudelft.nl/mude/book/-/blob/main/.gitlab-ci.yml?ref_type=heads).
```

