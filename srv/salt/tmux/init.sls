{% from "map.jinja" import user,user_home_path with context %}

tmux_pkg:
  pkg.installed:
    - name: tmux

tmux_config:
  file.managed:
    - name:  {{ user_home_path }}/.tmux.conf
    - source: salt://tmux/files/tmux.conf
    - template: jinja
    - user: {{ user }}
    - mode: 440
