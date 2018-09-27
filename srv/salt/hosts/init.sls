{% for server, addrs in salt['mine.get']('*', 'network.ip_addrs')|dictsort %}
{{ server }}:
  host.present:
    - ip: {{ addrs[0] }}
{% endfor %}
