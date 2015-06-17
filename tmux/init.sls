{% set user = pillar['user']  %}
tmux_pkg:
  pkg.installed:
    - name: tmux

tmux_config:
  file.managed:
    - name:  /home/{{ user }}/.tmux.conf
    - source: salt://tmux/files/tmux.conf
    - template: jinja
    - user: {{ user }}
    - group: {{ user }}
    - mode: 440
