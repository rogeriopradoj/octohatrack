# Docker image: rogeriopradoj/octohatrack

Visit <https://github.com/LABHR/octohatrack> for more information.

## Docker usage

Firstly, update your local image

```
docker pull rogeriopradoj/octohatrack:latest
```

Then, set your environment variable `GITHUB_TOKEN`:

```
export GITHUB_TOKEN=123456 # https://github.com/settings/tokens
```

Finally, run it, changing `username/repo` with the name of the repo to parse

```
docker run \
    --interactive \
    --tty \
    --rm \
    --env GITHUB_TOKEN=$GITHUB_TOKEN \
    --volume $HOME/.octohatrack:/cache \
    \
    rogeriopradoj/octohatrack:latest \
    \
    username/repo

```    