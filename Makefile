help: ## Print help (default target)
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: ## Configure salt-minion
	@echo "Install salt-box"
	sudo ./install.sh

hs: ## Run an highstate
	@echo "Apply highstate"
	sudo salt-call --log-level=quiet state.highstate

update: ## Update Iterm configuration
	@echo "Update configuration"
	cp ${HOME}/.iterm_profile/com.googlecode.iterm2.plist iterm2/files/com.googlecode.iterm2.plist
	sed -i ''  "s@\(${HOME}\)@\{\{ home \}\}@g" iterm2/files/com.googlecode.iterm2.plist
