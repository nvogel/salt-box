
## Install Salt

### On OS X

 - Install [brew](http://brew.sh) , then install SaltStack
 _ Install Iterm


## salt-box

Install salt-minion and follow the documentation for using a standalone minion (http://docs.saltstack.com/en/latest/topics/tutorials/standalone_minion.html)

In **/srv/salt/top.sls**:

    base:
      '*':
        - box

In **/srv/pillar/top.sls**:

    base:
      '*':
        - myuser

In **/srv/pillar/myuser/init.sls**, add pillar data with your user name :

    user: 'myuser'

In **/etc/salt/minion**, add a root directory with the location of the salt box

    file_roots:
        base:
          - /srv/salt
          - /home/myuser/path/to/salt-box

And clone the salt box :

    cd /home/myuser/path/to
    git clone https://github.com/nvogel/salt-box.git

In order to apply the confifuration, run:

    sudo salt-call state.highstate
