#!/usr/bin/env bash

user_name=$(who am i | awk '{print $1}')

echo $user_name

mkdir -p /etc/salt

cat > /etc/salt/minion <<EOF
file_client: local

# add a root directory with the location of the salt box
file_roots:
  base:
    - $(pwd)/salt

grains:
  box_user: ${user_name}
EOF
