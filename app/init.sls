{% from "map.jinja" import user,info with context %}

install_spectacle:
  cmd.run:
    - name: "brew cask install spectacle"
    - unless: " brew cask list | grep spectacle"
    - runas: {{ user }}

install_limechat:
  cmd.run:
    - name: "brew cask install limechat"
    - unless: " brew cask list | grep limechat"
    - runas: {{ user }}

install_skim:
  cmd.run:
    - name: "brew cask install skim"
    - unless: " brew cask list | grep skim"
    - runas: {{ user }}

install_java:
  cmd.run:
    - name: "brew cask install java"
    - unless: " brew cask list | grep java"
    - runas: {{ user }}
