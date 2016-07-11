install:
	@echo "Install salt-box"
	sudo ./install.sh

hs:
	@echo "Apply highstate"
	sudo salt-call --log-level=quiet state.highstate

update:
	@echo "Update configuration"
	cp ${HOME}/.iterm_profile/com.googlecode.iterm2.plist /tmp
	sed -i ''  "s@\($HOME\)@\{\{ home \}\}@g" /tmp/com.googlecode.iterm2.plist
