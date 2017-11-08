### server: mrx 

saltstack_pkgs:
  pkg.installed:
    - pkgs:
      - salt
      - python-pip

## Cron
highstate_cron:
  cron.absent:
    - name: '/usr/bin/salt \* state.highstate'
    - user: root
    - minute: '*/30'
    - hour: '*'
    - daymonth: '*'
    - month: '*'
    - dayweek: '*'
    - comment: "Added by SaltStack, do not modify"


# Include other classes
include:
  - linux.golang

