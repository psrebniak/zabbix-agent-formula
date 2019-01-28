{%- if salt['pillar.get']('zabbix-agent:config') %}
Configure Zabbix Agent package:
  file.managed:
    - name: /etc/zabbix/zabbix_agentd.conf
    - source: salt://zabbix-agent/config.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
{% endif %}