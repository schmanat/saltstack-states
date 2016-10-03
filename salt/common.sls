
## Run Salt on each node every 30 min
salt-call:
  cron.present:
    - name: '/usr/bin/salt-call state.apply'
    - user: root
    - minute: '*/30'
    - hour: '*'
    - daymonth: '*'
    - month: '*'
    - dayweek: '*'
    - comment: "Added by SaltStack, do not modify"

iptables:
  service.dead:
    - enable: False


# NTP CONF
ntp:
  pkg.installed: []
  service.running:
    - name: ntpd
    - require:
      - pkg: ntp
    - watch:
      - file: /etc/ntp.conf

/etc/ntp.conf:
  file.managed: 
    - source: salt://ntp/ntp.conf
    - user: root
    - group: root
    - mode: 644
    - skip_verify: True
    - require:
      - pkg: ntp
