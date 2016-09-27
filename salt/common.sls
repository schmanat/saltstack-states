
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


tree: 
  pkg.installed

git:
  pkg.installed

wget:
  pkg.installed

### install Locate command
mlocate:
  pkg.installed

### update DB for Locate command
updatedb:
  cmd.run

iptables:
  service.dead:
    - enable: False

