# Organize your editing team and tools

```{admonition} User types
:class: tip
This page is useful for user type 4-5.
```

If you want to create a collaborative book for students, there's a few agreements you should make to enhance collaboration and student experience. These are written from our own experience, feel free to deviate or provide your own advice!

**This page is work in progress**

## Team
- Define who's in charge of:
  - Team organization (administrators), at least user type 4
  - Combining content (maintainers), at least user type 4
  - Editing and reviewing content (editors)
- Define how your review process is taking place. We advice at least a maintainer reviewing each bit o content.
- Make sure people identify themselves as one of the user types. You should have at least one user type 4 or 5. Although this can be a TA, it is advised one of the teachers is comfortable with this user type as well.

## Tools
- Choose between GitHub and GitLab, as explained below
- Choose whether to host your git repository in your private account or from a share teams (groups in GitLab, organization in GitHub). For GitHub this influences your book web url as well, as it hold your username or organization name. For courses we therefore advise you to create a organization with the course name. Furthermore, on GitHub a private repository has a limited amount of actions-minutes required for published your book. On GitLab, the choice for private or public doesn't influence your web url and the amount of computing power available as that requires you to set up a server yourself.
- Choose whether to have your git repository public or private (independent of whether your book website is public or private). If you'd like a private repo on GitHub, apply for a GitHub Team (free as a teacher as described in the [github documentation](https://docs.github.com/en/education/explore-the-benefits-of-teaching-and-learning-with-github-education/github-education-for-teachers/about-github-education-for-teachers#github-education-features-for-teachers)). If you've a organization for your book on github, link your GitHub team rights to your organization as described on the [github website](https://github.com/team#organizations)
- If you've chosen for GitHub, start with our [template](../external/template/README.md)
- Define branches in GitHub/GitLab. We advise the following branches:
  - A published branch which contains the students' version of this year. This could be called ie. `publish` or `main` or `<current acadamic year>`. Add this branch as the `PRIMARY BRANCH` when making use of the [github workflow](gh-workflow-settings), this will make sure students are redirected to this URL which doesn't move when adding new versions of the book later on. If you plan on keeping only one public version, it's advised to set `BEHAVIOR_PRIMARY` from the default `redirect` to `copy` which makes sure the primary branch is copied to root so that the URL is compact.
  - A development branch which contains all the new content combined but not yet published to students. This could be called ie. `dev` or `main`. `dev` is advised when  you prefer git's default branch to be the most recent published version (as `main` is expected to be the default branch by many).
  - Branches which will be created during the editing process, which is probably something which you want to allow. As long as `BRANCHES_TO_DEPLOY` is set to the default `*`, all branches are build and your fellow editors can review their own and each other's versions online. Once every while, it doesn't hurt to go through the list of branches and delete any branches which are merged but not deleted.
  - (future) branches for previous study years which contain each year's version of the book. These could be called `<academic year>` which ends up in their url too. Add these branches to the list of `BRANCHES_ARCHIVED` when making use of the [github workflow](gh-workflow-settings) to add a banner to the page indicating it's archived state.
- Setup protected branches in GitHub/GitLab to prevent accidental changes
- Add people with GitHub/GitLab permission matching their role and the protected branches.
- Add a readme explaining the way you organized branches and permissions
- Provide explanation on how you'd like to receive feedback in both the readme as the published book. The use of issues (in the book with the issue button) is advised.
- Decide on whether or not to publish your book via Open Interactive Textbooks TU Delft. Publishing will give you a copyright check, ISBN and DOI number but heavily limits the amount of changes you can make to your book. We advise publishing an archived version of your book whenever the academic year is over.

### GitHub vs GitLab

- Github allows you to host your book on the GitHub server using GitHub pages (to be recognized by the `<organization/username>.github.io/<book>` url, for example the [template book](https://teachbooks.github.io/template/)), which takes all the steps of hosting out of your hands. You can also use a custom owned URL, although this requires some additional skills. On TU Delft's GitLab you need a webserver, which is offered by TeachBooks (to be recognized by the url `teachbooks.tudelft.nl/<book>`, for example [this manual](https://teachbooks.tudelft.nl/jupyter-book-manual)) as the TU Delft OIT team (to be recognized by the url `interactivetextbooks.tudelft.nl/<book>`, for example [the TU Delft OIT demo book](https://interactivetextbooks.tudelft.nl/open-textbooks-demonstration/)). For the TU Delft OIT webserver you’re required to publish your book more officially, it cannot be used for viewing your book online in the editing-phase.
- On GitHub you can start right away with a git environment and online book using our [template](../external/template/README.md). On GitLab you can set up your own git environment, but you need to be given access by [TeachBooks](mailto:teachbooks@tudelft.nl) or [TU Delft OIT](mailto:Interactive-textbooks@tudelft.nl) to view your build book online.
- On GitHub we developed a [automatic process which builds the book and publishes it online](../external/deploy-book-workflow/README.md) in a very flexible way (publication of multiple version of the book, insights in book building errors, parallel so fast build, custom urls in subdirectories). On GitLab both we and other people at TU Delft have a more simplistic workflow which can be used when you're set up on those Git environments and webservers. If you want to use GitLab and make use of the GitHub workflow, you can [mirror your repository to GitHub](https://docs.gitlab.com/ee/user/project/repository/mirror/push.html#set-up-a-push-mirror-from-gitlab-to-github)
- Because we’re in control on the server connected to GitLab, we can set up SSO login for visitors of the website. This is not an option for GitHub because we don’t own the server.
- Both GitLab and GitHub allow for extensive options for visibility of the source code. If you're using GitHub pages, you need a free organization linked to a free eduational account. The TU Delft GitLab requires SSO login for editing the book. Although this is useful for TU Delft employees, it limits the collaboration with people outside of TU Delft.
- GitHub has a nice integration with the [GitHub Desktop application](git-setup_local.md). For GitLab it works as well, but has less functionality.
- [Utteranc.es](../basic-features/utterances.md) requires a GitHub repository to host the discussions. If you're using a GitLab repository, you need a separate GitHub repository and the discussions and book content is not at the same place.

If you have doubt about this choice, we advise you to start on GitHub. Moving/duplicating your content to GitLab or hosting to a custom URL is always possible at a later stage.

Here's a table summarizing the information:
|  | GitHub   | GitLab      |
|--|----------|-------------|
| Website to view book online     | GitHub pages (`<organization/username>.github.io/<book>`) or custom URL 🌐         | TeachBooks (`teachbooks.tudelft.nl/<book>`) or TU Delft OIT (`interactivetextbooks.tudelft.nl/<book>`) 🎓 |
| Setting up book website | Immediate and automated with [template](../external/template/README.md) ⚡️         | Access required by TeachBooks or TU Delft OIT  🚧    |
| Updating book website | Automated and flexible (multiple version of the book, building error insights, fast, custom urls)  🚀   | Automated but simplistic (one or two versions, command-line interface) 🛵   |
| Student book access with SSO    | Not available for GitHub pages ❌, optional with custom URL  ✅ | Optional  ✅          |
| Teacher/TA access to Git repository   | Private (if part of organization linked to educational account) /public  👀   | Private / public / internally TU Delft, editing requires requires SSO login  👥   |
| GitHub Desktop | Well integrated 😎 | Basic integration 🙂 |
| Utteranc.es | Can be linked to same repository 🏷️ | Requires GitHub repository next to GitLab repository 🏷️🏷️|