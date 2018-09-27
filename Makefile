help: ## Print help (default target)
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: ## Configure salt-minion
	@echo "Install salt-box"
	./install.sh

vim: ## apply vim state
	salt-call --local -c etc/salt state.apply vim

tmux: ## apply tmux state
	salt-call --local -c etc/salt state.apply tmux

update: ## Update Iterm configuration
	@echo "Update configuration"
	cp ${HOME}/.iterm_profile/com.googlecode.iterm2.plist srv/salt/iterm2/files/com.googlecode.iterm2.plist
	sed -i ''  "s@\(${HOME}\)@\{\{ home \}\}@g" srv/salt/iterm2/files/com.googlecode.iterm2.plist
