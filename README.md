# docker-claude-code
This repo will allow Monui employees to spin up claude code inside a docker container.
The docker image is based on [Anthropic's development containers](https://code.claude.com/docs/en/devcontainer) where the source code can be found [here](https://github.com/anthropics/claude-code/tree/main/.devcontainer)

## Get started
1) [Sign up to docker](https://app.docker.com/signup?redirectTo=/subscription%3Fplan%3Dfree)
2) [Download docker](https://docs.docker.com/desktop/setup/install/mac-install/)
3) Start up docker
5) [Get Anthropic API key](https://platform.claude.com/settings/keys) and save to a password vault
7) Open the terminal in your code repo and create the container with the following command: 
```bash 
docker compose run claude
```
7) Open docker container and go to the 'exec' tab
8) Add the antrhopic API to your env variables by typing the following command into the terminal: 
```bash 
export ANTHROPIC_API_KEY="your-api-key-from-the-anthropic-website"
```
9) run claude by typing:
```bash 
claude
```
