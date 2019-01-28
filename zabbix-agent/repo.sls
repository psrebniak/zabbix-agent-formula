Add Zabbix Agent repository:
  pkgrepo.managed:
    - humanname: Zabbix Agent
    - name: deb http://repo.zabbix.com/zabbix/3.4/{{ salt['grains.get']('os')|lower }} {{ salt['grains.get']('oscodename') }} main
    - file: /etc/apt/sources.list.d/zabbix.list
    - key_url: https://repo.zabbix.com/zabbix-official-repo.key
