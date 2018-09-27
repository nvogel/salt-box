{% from "map.jinja" import user with context %}
{{ user }}:
  user.present:
    - shell: /bin/zsh
