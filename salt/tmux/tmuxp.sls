{% from "map.jinja" import user,user_home_path with context %}

tmuxp:
  pip.installed

tmuxp_config:
  file.managed:
    - name:  {{ user_home_path }}/.tmuxp.yaml
    - source: salt://tmux/files/tmuxp.yaml.j2
    - template: jinja
    - user: {{ user }}
    - mode: 440
