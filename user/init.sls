{% from "map.jinja" import user,info with context %}
{{ user }}:
  user.present:
    - shell: /bin/zsh
