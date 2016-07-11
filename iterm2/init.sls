{% from "map.jinja" import user,info with context %}

iterm_profile:
  file.managed:
    - name:  {{ info['user_home_path'] }}/.iterm_profile/com.googlecode.iterm2.plist
    - source: salt://iterm2/files/com.googlecode.iterm2.plist
    - template: jinja
    - user: {{ user }}
    - mode: 660
    - dir_mode: 770
    - makedirs: True
    - defaults:
        home: {{ info['user_home_path'] }}
