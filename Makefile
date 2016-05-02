default: run

info:
	@echo ""
	@echo " >> Running octohatrack against repo: '$${USERNAME_SLASH_REPO}'"
	@echo ""

run: info update
	@echo "Docker run container"
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
	@echo "Docker pull image"
	@docker pull rogeriopradoj/octohatrack:latest >/dev/null 2>&1
	@echo "...Done."
	@echo ""
