FROM memiks/android-treble-build
MAINTAINER Lesur Frederic <contact@memiks.fr>

###################
# GitHub Action description
###################
LABEL "com.github.actions.name"="Treble Build"
LABEL "com.github.actions.description"="Build Android Treble GSI image"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/memiks/treble-build-github-actions"
LABEL "homepage"="https://github.com/memiks/treble-build-github-actions"
LABEL "maintainer"="Lesur Frederic <contact@memiks.fr>"

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
