{% from "map.jinja" import user,user_home_path with context %}

install_terraform:
  archive.extracted:
    - name: {{ user_home_path }}//bin
    - source: https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_darwin_amd64.zip
    - skip_verify: True
    - enforce_toplevel: False

install_tflint:
  archive.extracted:
    - name: {{ user_home_path }}//bin
    - source: https://github.com/wata727/tflint/releases/download/v0.7.3/tflint_darwin_amd64.zip
    - skip_verify: True
    - enforce_toplevel: False
