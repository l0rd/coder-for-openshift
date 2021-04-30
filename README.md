# coder-for-openshift

[![build and push](https://github.com/l0rd/coder-for-openshift/actions/workflows/main.yaml/badge.svg)](https://github.com/l0rd/coder-for-openshift/actions/workflows/main.yaml)
[![](https://img.shields.io/badge/contribute-with_1_click-525C86?logo=eclipse-che&labelColor=FDB940)](https://workspaces.openshift.com/f?url=https://gist.githubusercontent.com/l0rd/a16bcfda94d8e5775eb32d66da7299b2/raw/devfile.yaml)

Patched version of [codercom/code-server:3.9.3](https://hub.docker.com/r/codercom/code-server/tags?page=1&ordering=last_updated) that starts on OpenShift (source code is [here](https://github.com/l0rd/coder-for-openshift)).

Use the badge above to start a [code-server](https://github.com/cdr/code-server/blob/main/docs/FAQ.md) based workspace on [Red Hat Developer Sandbox IDE](https://workspaces.openshift.com) with the following limitations:

:warning: The dashboard menu is not collapsible<br/>
:warning: Workspace idling doesn't work<br/>
:warning: Don't try to add projects to the devfile, they are ignored<br/>
:warning: Don't try to add plugins to the devfile, they won't work<br/>
:warning: `/projects` is not the default target folder of the git clone command<br/>
:warning: Anything outside folder `/projects` gets deleted when restarting the workspace<br/>

Here is how it's going to look like
<br/>

<img width="1533" alt="image" src="https://user-images.githubusercontent.com/606959/116725887-d9665f00-a9e2-11eb-9067-ff3d3daa93c0.png">

The `meta.yaml` referenced by the devfile uses the image `ghcr.io/l0rd/coder-ocp:latest` that is a patched version of [codercom/code-server:3.9.3](https://hub.docker.com/r/codercom/code-server/tags?page=1&ordering=last_updated) that starts on OpenShift (source code is [here](https://github.com/l0rd/coder-for-openshift)).
