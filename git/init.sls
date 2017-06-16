install_git_pkg:
  pkg.installed:
    - name: git

icdiff:
  pip.installed:
    - user: {{ user }}
