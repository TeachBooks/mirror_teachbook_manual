# GitHub vs GitLab

```{admonition} User types
:class: tip
This page is useful for user type 3-5.
```

Now that you can start, there's a first choice to be made, where to host your book:

- Github allows you to host your book on the GitHub server using GitHub pages (to be recognized by the `<organization/username>.github.io/<book>` url, for example the [template book](https://teachbooks.github.io/template/)), which takes all the steps of hosting out of your hands. You can also use a custom owned URL, although this requires some additional skills. On TU Delft's GitLab you need a webserver, which is offered by TeachBooks (to be recognized by the url `teachbooks.tudelft.nl/<book>`, for example [this manual](https://teachbooks.tudelft.nl/jupyter-book-manual)) as the TU Delft OIT team (to be recognized by the url `interactivetextbooks.tudelft.nl/<book>`, for example [the TU Delft OIT demo book](https://interactivetextbooks.tudelft.nl/open-textbooks-demonstration/)). For the TU Delft OIT webserver you’re required to publish your book more officially, it cannot be used for viewing your book online in the editing-phase.
- On GitHub you can start right away with a git environment and online book using our [template](../external/template/README.md). On GitLab you can set up your own git environment, but you need to be given access by [TeachBooks](mailto:teachbooks@tudelft.nl) or [TU Delft OIT](mailto:Interactive-textbooks@tudelft.nl) to view your build book online.
- On GitHub we developed a [automatic process which builds the book and publishes it online](../external/deploy-book-workflow/README.md) in a very flexible way (publication of multiple version of the book, insights in book building errors, parallel so fast build, custom urls in subdirectories). On GitLab both we and other people at TU Delft have a more simplistic workflow which can be used when you're set up on those Git environments and webservers.
- Because we’re in control on the server connected to GitLab, we can set up SSO login for visitors of the website. This is not an option for GitHub because we don’t own the server.
- The TU Delft GitLab requires SSO login for editing the book. Although this is useful for TU Delft employees, it limits the collaboration with people outside of TU Delft.
- GitHub has a nice integration with the [GitHub Desktop application](git-setup_local.md). For GitLab it works as well, but has less functionality.
- [Utteranc.es](../basic-features/utterances.md) requires a GitHub repository to host the discussions. If you're using a GitLab repository, you need a separate GitHub repository and the discussions and book content is not at the same place.

If you have doubt about this choice, we advise you to start on GitHub. Moving your stuff to GitLab or hosting to a custom URL is always possible at a later stage.

Here's a table summarizing the information:
|  | GitHub   | GitLab      |
|--|----------|-------------|
| Website to view book online     | GitHub pages (`<organization/username>.github.io/<book>`) or custom URL 🌐         | TeachBooks (`teachbooks.tudelft.nl/<book>`) or TU Delft OIT (`interactivetextbooks.tudelft.nl/<book>`) 🎓 |
| Setting up book website | Immediate and automated with [template](../external/template/README.md) ⚡️         | Access required by TeachBooks or TU Delft OIT  🚧    |
| Updating book website | Automated and flexible (multiple version of the book, building error insights, fast, custom urls)  🚀   | Automated but simplistic (one or two versions, command-line interface) 🛵    |
| Student book access with SSO    | Not available  ❌      | Optional  ✅          |
| Teacher/TA access to Git repository   | Read only, custom roles or public for everyone  👀   | Private, read-only, custom roles or TU Delft internal which requires SSO login  👥   |
| GitHub Desktop | Well integrated 😎 | Basic integration 🙂 |
| Utteranc.es | Can be linked to same repository 🏷️ | Requires GitHub repository next to GitLab repository 🏷️🏷️|