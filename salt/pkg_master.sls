#### STATE #####


# mrxmaster packages

{% for package in [ 'gdm',
                    'conman',
                    'crypto-utils',
                    'expect',
                    'mgetty',
                    'rrdtool',
                    'symlinks',
                    'lsscsi',
                    'libsane-hpaio',
                    'puppet',
                    'augeas-libs',
                    'facter',
                    'libselinux-ruby',
                    'ruby',
                    'ruby-augeas',
                    'ruby-libs',
                    'ruby-shadow' ]
 %}

{{ package }}:
  pkg.installed
  
{% endfor %}
