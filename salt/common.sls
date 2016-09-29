
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

