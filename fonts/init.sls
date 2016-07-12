{% from "map.jinja" import user,info with context %}

create_powerline_fonts_directory:
  file.directory:
    - name: ~/.powerline_fonts
    - user: {{ user }}
    - mode: 770

https://github.com/powerline/fonts:
  git.latest:
    - rev: master
    - target: {{ info['user_home_path'] }}/.powerline_fonts

install_font:
  cmd.run:
    - name: "bash ~/.powerline_fonts/install.sh"
    - runas: {{ user }}
