{% from "map.jinja" import user with context %}

{% if salt['grains.get']('os') == 'MacOS' %}
python:
  pkg.installed

python@2:
  pkg.installed

{% else %}

python-pip:
  pkg.installed

{% endif %}

install_virtualenvwrapper:
  cmd.run:
    - name: pip install virtualenvwrapper
    - runas: {{ user }}
    - unless:
      - pip list | grep virtualenvwrapper
