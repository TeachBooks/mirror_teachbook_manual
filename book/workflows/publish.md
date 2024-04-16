(publish_students)=
# Publish to students

For this step it is assumed you’re using TeachBook’s GitHub actions or TeachBook’s GitLab pipeline.

Until now, you merged your changes to branch `main`, but you might see a branch called `publish` as well. This branch is where the student version of your book should go. The idea behind this is that the student version of your book should only change a few times per year at most to prevent confusion. This way, you can still make frequent changes to the `main` branch.

To publish your changes to the student version, simply repeat the next step but now from `main` to `publish`