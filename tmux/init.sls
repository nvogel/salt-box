{% from "map.jinja" import user,home with context %}
tmux_pkg:
  pkg.installed:
    - name: tmux

tmux_config:
  file.managed:
    - name:  ~/.tmux.conf
    - source: salt://tmux/files/tmux.conf
    - template: jinja
    - user: {{ user }}
    - mode: 440
