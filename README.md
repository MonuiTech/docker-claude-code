# docker-claude-code
This repo will allow Monui employees to spin up claude code inside a docker container.
The docker image is based on [Anthropics development containers](https://code.claude.com/docs/en/devcontainer) where the source code can be found [here](https://github.com/anthropics/claude-code/tree/main/.devcontainer)

## Get started
1) [Sign up to docker](https://app.docker.com/signup?redirectTo=/subscription%3Fplan%3Dfree)
2) [Download docker](https://docs.docker.com/desktop/setup/install/mac-install/)
3) [Get Anthropic API key](https://platform.claude.com/settings/keys)
4) Add antrhopic API to your .env file 
```bash 
echo 'ANTHROPIC_API_KEY=[paste-in-your-api-key]' > .env
```
5) Create container 
```bash 
docker compose run claude
```
