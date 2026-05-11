# docker-claude-code
This repo will allow Monui employees to spin up claude code inside a docker container.
The docker image is based on [Anthropic's development containers](https://code.claude.com/docs/en/devcontainer) where the source code can be found [here](https://github.com/anthropics/claude-code/tree/main/.devcontainer)

## Get started
1) [Sign up to docker](https://app.docker.com/signup?redirectTo=/subscription%3Fplan%3Dfree)
2) [Download docker](https://docs.docker.com/desktop/setup/install/mac-install/)
3) Download this repository (folder)
4) Open the repository in your terminal
5) Run the below command
  ``` bash
bash create-claude-code-docker-container.sh
```
6) Open docker container and go to the 'exec' tab
7) run claude by typing:
```bash 
claude
```
