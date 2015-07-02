{% from "map.jinja" import ack with context %}

ack_package:
  pkg.installed:
    - name: {{ ack.pkg  }}
