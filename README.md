# Docker image: rogeriopradoj/octohatrack

Visit <https://github.com/LABHR/octohatrack> for more information.

## Docker usage

### make

#### Preparation

First time, download Makefile:
```
wget https://git.io/octohatrack-make -O Makefile
```

And set required environment variables `GITHUB_TOKEN` and `USERNAME_SLASH_REPO`:

```
export GITHUB_TOKEN=123456 # https://github.com/settings/tokens
export USERNAME_SLASH_REPO=username/repo # update accordingly
```

#### Go!

```
make

;# or

make USERNAME_SLASH_REPO=username/repo

;# or

USERNAME_SLASH_REPO=username/repo make 
```

### Using docker commands directly

Firstly, update your local image

```
docker pull rogeriopradoj/octohatrack:latest
```

Then, set required environment variable `GITHUB_TOKEN`:

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