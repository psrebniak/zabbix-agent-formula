include:
  - zabbix-agent.install
  - zabbix-agent.config

start Zabbix Agent service:
  service.running:
    - name: zabbix-agent
    - enable: True
    - require:
      - pkg: zabbix-agent
    {%- if salt['pillar.get']('zabbix-agent:config') %}
    - watch:
      - file: /etc/zabbix/zabbix_agentd.conf
    {%- endif %}