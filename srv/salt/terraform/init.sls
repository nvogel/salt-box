{% from "map.jinja" import user,user_home_path with context %}

install_terraform:
  archive.extracted:
    - name: {{ user_home_path }}//bin
    - source: https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_darwin_amd64.zip
    - skip_verify: True
    - enforce_toplevel: False
