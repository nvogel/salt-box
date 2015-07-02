{% from "map.jinja" import user,home with context %}

vim_zshrc:
  file.managed:
    - name:  ~/.zshrc
    - source: salt://zsh/files/zshrc
    - template: jinja
    - user: {{ user }}
    - mode: 440

https://github.com/robbyrussell/oh-my-zsh.git:
  git.latest:
    - rev: master
    - target: ~/.oh-my-zsh
    - user: {{ user }}

https://github.com/zsh-users/zsh-syntax-highlighting.git:
  git.latest:
    - rev: master
    - target: ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    - user: {{ user }}

https://github.com/seebi/dircolors-solarized.git:
  git.latest:
    - rev: master
    - target: ~/.dircolors-solarized
    - user: {{ user }}
