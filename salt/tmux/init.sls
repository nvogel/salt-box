{% from "map.jinja" import user,info with context %}
tmux_pkg:
  pkg.installed:
    - name: tmux

tmux_config:
  file.managed:
    - name:  {{ info['user_home_path'] }}/.tmux.conf
    - source: salt://tmux/files/tmux.conf
    - template: jinja
    - user: {{ user }}
    - mode: 440
