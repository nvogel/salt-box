{% from "map.jinja" import user,user_home_path with context %}

Install_hack_font:
  file.managed:
    - name: "~/Library/Fonts/Hack Regular Nerd Font Complete.ttf"
    - source: "https://github.com/ryanoasis/nerd-fonts/raw/2.0.0/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf"
    - skip_verify: True
    - user: {{ user }}
    - mode: 440
