{% from "map.jinja" import user,info with context %}

vim_package:
  pkg.installed:
    - name: vim

vim_config:
  file.managed:
    - name:  {{ info['user_home_path'] }}/.vimrc
    - source: salt://vim/files/vimrc
    - template: jinja
    - user: {{ user }}
    - mode: 440

vim_dir:
  file.directory:
    - name: {{ info['user_home_path'] }}/.vim
    - user: {{ user }}
    - mode: 770

vim_bundle_dir:
  file.directory:
    - name: ~/.vim/bundle
    - user: {{ user }}
    - mode: 770

https://github.com/Shougo/neobundle.vim:
  git.latest:
    - rev: master
    - target: {{ info['user_home_path'] }}/.vim/bundle/neobundle.vim

vim_plugin:
  file.recurse:
    - name: {{ info['user_home_path'] }}/.vim/plugin/settings
    - source: salt://vim/files/plugin/settings
    - user: {{ user }}
    - dir_mode: 770
    - file_mode: 440
