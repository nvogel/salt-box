{% from "map.jinja" import user,user_home_path with context %}

vim_zshrc:
  file.managed:
    - name:  {{ user_home_path }}/.zshrc
    - source: salt://zsh/files/zshrc
    - template: jinja
    - user: {{ user }}
    - mode: 440

https://github.com/robbyrussell/oh-my-zsh.git:
  git.latest:
    - rev: master
    - target: /{{ user_home_path }}/.oh-my-zsh
    - user: {{ user }}

create_custom_theme_dir:
  file.directory:
    - name:   {{ user_home_path }}/.oh-my-zsh/custom/themes
    - user: {{ user }}
    - makedirs: True
    - mode: 740

https://github.com/bhilburn/powerlevel9k.git:
  git.latest:
    - rev: master
    - target: /{{ user_home_path }}/.oh-my-zsh/custom/themes/powerlevel9k
    - user: {{ user }}

https://github.com/zsh-users/zsh-syntax-highlighting.git:
  git.latest:
    - rev: master
    - target: /{{ user_home_path }}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    - user: {{ user }}
    - force_fetch: True

https://github.com/seebi/dircolors-solarized.git:
  git.latest:
    - rev: master
    - target: /{{ user_home_path }}/.dircolors-solarized
    - user: {{ user }}
    - force_reset: True
