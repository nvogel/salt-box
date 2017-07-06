{% from "map.jinja" import user,info with context %}

tmuxp:
  pip.installed

tmuxp_config:
  file.managed:
    - name:  {{ info['user_home_path'] }}/.tmuxp.yaml
    - source: salt://tmux/files/tmuxp.yaml.j2
    - template: jinja
    - user: {{ user }}
    - mode: 440
