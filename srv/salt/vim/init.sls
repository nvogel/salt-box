{% from "map.jinja" import user,user_home_path with context %}

vim_package:
  pkg.installed:
    - name: vim

vim_config:
  file.managed:
    - name:  {{ user_home_path }}/.vimrc
    - source: salt://vim/files/vimrc
    - template: jinja
    - user: {{ user }}
    - mode: 440

vim_dir:
  file.directory:
    - name: {{ user_home_path }}/.vim
    - user: {{ user }}
    - mode: 777

install_plugin_manger:
  file.managed:
    - name: {{ user_home_path }}/.vim/autoload/plug.vim
    - source: https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    - skip_verify: True
    - makedirs: True
    - user: {{ user }}
    - mode: 660

vim_plugin:
  file.recurse:
    - name: {{ user_home_path }}/.vim/plugin/settings
    - source: salt://vim/files/plugin/settings
    - user: {{ user }}
    - dir_mode: 770
    - file_mode: 440
