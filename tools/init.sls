{% from "map.jinja" import packages with context %}

tools_package:
  pkg.installed:
    - pkgs:
      - {{ packages.ack }}
      - {{ packages.ag }}
      - {{ packages.ctags }}
      - tig
      - ipcalc
      - figlet
      - jq
      - cmus
