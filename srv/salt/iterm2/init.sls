{% from "map.jinja" import user,user_home_path with context %}

iterm_profile:
  file.managed:
    - name:  {{ user_home_path }}/.iterm_profile/com.googlecode.iterm2.plist
    - source: salt://iterm2/files/com.googlecode.iterm2.plist
    - template: jinja
    - user: {{ user }}
    - mode: 660
    - dir_mode: 770
    - makedirs: True
    - defaults:
        home: {{ user_home_path }}
