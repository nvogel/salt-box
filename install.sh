#!/usr/bin/env bash

user_name=$(who am i | awk '{print $1}')

echo "${user_name}"

cat > srv/pillar/vars.sls <<EOF
box_user: ${user_name}
EOF
