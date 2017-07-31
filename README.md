# Salt-box

## OsX

Install Command line tools without xcode, choose *Install* in the dialog box:

    xcode-select --install

Install [brew](http://brew.sh)

Install SaltStack

    brew install saltstack

Recommended software list on OsX:

* Iterm


## Installation

Clone this repository in /home/myuser/path/to/salt-box

    cd /home/myuser/path/to
    git clone https://github.com/nvogel/salt-box.git
    cd salt-box

Configure the salt minion:

   make install

In order to apply the confifuration, run:

    make hs

## Iterm

On Iterm go to iTerm2 -> preferences -> General,
and check the option "Load preferences from a custom folder or URL" and use the directory /home/myuser/.iterm_profile

To save the current iterm2 configuration, run *make update*, then commit the new version


## Quick start in cloud environment

    salt '*' saltutil.refresh_pillar
    salt '*' mine.update
    salt '*' state.apply hosts
    salt-call state.apply tmux pillar='{"box_user": "fedora"}'
    salt-call state.apply tmux.tmuxp pillar='{"box_user": "fedora"}'

    # as fedora user
    tmuxp load .

