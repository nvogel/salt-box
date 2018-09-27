{% from "map.jinja" import user with context %}

install_spectacle:
  cmd.run:
    - name: "brew cask install spectacle"
    - unless: " brew cask list | grep spectacle"
    - runas: {{ user }}
