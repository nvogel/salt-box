{% if salt['grains.get']('os') == 'MacOS' %}
python:
  pkg.installed

python3:
  pkg.installed
{% else %}
python-pip:
  pkg.installed

#virtualenvwrapper:
#  pip.installed:
#    - require:
#      - pkg: python-pip
{% endif %}
