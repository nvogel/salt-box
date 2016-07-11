install:
	@echo "Install salt-box"
	sudo ./install.sh

hs:
	@echo "Apply highstate"
	sudo salt-call --log-level=quiet state.highstate

update:
	@echo "Update configuration"
	cp ${HOME}/.iterm_profile/com.googlecode.iterm2.plist iterm2/files/com.googlecode.iterm2.plist
	sed -i ''  "s@\(${HOME}\)@\{\{ home \}\}@g" iterm2/files/com.googlecode.iterm2.plist
