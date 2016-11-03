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

