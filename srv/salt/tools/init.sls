{% from "map.jinja" import packages,user with context %}

tools_package:
  pkg.installed:
    - pkgs:
      - {{ packages.ack }}
      - {{ packages.ag }}
      - {{ packages.ctags }}
      - tig
      - ipcalc
      - jq
      - tree
      - wget
      - watch
      - nmap
      - bash

{% if salt['grains.get']('os') == 'MacOS' %}
install_color_ls:
  cmd.run:
    - name: "gem install colorls --user-install"
    - unless: "gem list | grep colorls"
{% endif %}
