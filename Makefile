default: run

run: update
	@: "$${GITHUB_TOKEN:?Need to set GITHUB_TOKEN non-empty}"
	@: "$${USERNAME_SLASH_REPO:?Need to set USERNAME_SLASH_REPO non-empty}"

	docker run \
        --interactive \
        --tty \
        --rm \
        --env GITHUB_TOKEN=$${GITHUB_TOKEN} \
        --volume $${HOME}/.octohatrack:/cache \
        \
        rogeriopradoj/octohatrack:latest \
        \
        $${USERNAME_SLASH_REPO}

update:
	docker pull rogeriopradoj/octohatrack:latest
