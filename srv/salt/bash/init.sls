{% from "map.jinja" import user,info with context %}

shellcheck:
  pkg.installed

vim_bashrc:
  file.managed:
    - name:  ~/.bashrc
    - source: salt://bash/files/bashrc
    - template: jinja
    - user: {{ user }}
    - mode: 440

https://github.com/Bash-it/bash-it.git:
  git.latest:
    - rev: master
    - target: /{{ user_home_path }}/.bash_it
    - user: {{ user }}
