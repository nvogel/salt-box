{% from "map.jinja" import user,user_home_path with context %}

install_gcloud:
  archive.extracted:
    - name: {{ user_home_path }}//bin
    - source: https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-225.0.0-darwin-x86_64.tar.gz
    - skip_verify: True
    - enforce_toplevel: False
