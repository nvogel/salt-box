{% from "map.jinja" import user,info with context %}

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
    - target: /{{ info['user_home_path'] }}/.oh-my-zsh
    - user: {{ user }}

create_custom_theme_dir:
  file.directory:
    - name:   ~/.oh-my-zsh/custom/themes
    - user: {{ user }}
    - makedirs: True
    - mode: 740

bullet_train_theme:
  file.managed:
    - name:   ~/.oh-my-zsh/custom/themes/bullet-train.zsh-theme
    - source: https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
    - skip_verify: True
    - user: {{ user }}
    - mode: 440

https://github.com/zsh-users/zsh-syntax-highlighting.git:
  git.latest:
    - rev: master
    - target: /{{ info['user_home_path'] }}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    - user: {{ user }}
    - force_fetch: True

https://github.com/seebi/dircolors-solarized.git:
  git.latest:
    - rev: master
    - target: /{{ info['user_home_path'] }}/.dircolors-solarized
    - user: {{ user }}
