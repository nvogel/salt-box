install_spectacle:
  cmd.run:
    - name: "brew cask install spectacle"
    - unless: " brew cask list | grep spectacle"

install_limechat:
  cmd.run:
    - name: "brew cask install limechat"
    - unless: " brew cask list | grep limechat"
