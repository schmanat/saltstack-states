#### MRXMASTER STATE #####


# mrxmaster packages

{% for package in [ 'gdm', 'conman' ] %}
                    # 'crypto-utils',
                    # 'expect',
                    # 'mgetty',
                    # 'rrdtool',
                    # 'symlinks',
                    # 'lsscsi',
                    # 'libsane-hpaio',
                    # 'puppet',
                    # 'augeas-libs',
                    # 'facter',
                    # 'libselinux-ruby',
                    # 'ruby',
                    # 'ruby-augeas',
                    # 'ruby-libs',
                    # 'ruby-shadow' 
                    


{{ package }}:
  pkg.installed
  
{% endfor %}


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

