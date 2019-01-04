{% from "map.jinja" import user with context %}
{{ user }}:
  user.present:
    - shell: /bin/zsh

create_user_bin_directory:
  file.directory:
    - name:   ~/bin
    - mode: 740
