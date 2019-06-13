{% from "map.jinja" import user,user_home_path with context %}

fzf:
  git.latest:
    - name: https://github.com/junegunn/fzf.git
    - rev: master
    - depth: 1
    - target: /{{ user_home_path }}/.fzf
    - user: {{ user }}

install_fzf:
  cmd.run:
    - name: "~/.fzf/install --no-bash --no-zsh --key-bindings --completion --update-rc"
    - onchanges:
      - git: fzf
