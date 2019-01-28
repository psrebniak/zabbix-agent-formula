include:
  - zabbix-agent.repo

Install Zabbix Agent package:
  pkg.installed:
    - pkgs:
      - zabbix-agent