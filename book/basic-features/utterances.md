# Discussions in your book: Utterances

[Utterances 🔮](https://utteranc.es/) is a lightweight open-source widget which allows you, your colleages and your students to discuss stuff in a blog post in your book. It is build on GitHub issues, so requires a GitHub repository, although the book can be hosted anywhere (so also on GitLab).

The [utterances website](https://utteranc.es/) clearly explains the required steps. The given script can be added anywhere in your book, just copy the html-script into your `.md`-file or a markdown cell in your `.ipynb`-file. The blogpost is not visible when you do a local build of the book, build it online or use a local python server as shown in {ref}`setup-local-server`.

Users need to have a GitHub-account to post a message. Although this might be a burden, it allows students to track their previous posts and set up notifications on follow-up posts.

Below you see an example of this feature!

## Example discussion
<script src="https://utteranc.es/client.js"
        repo="TeachBooks/utterances_manual"
        issue-term="pathname"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>