#### STATE #####


# mrxmaster packages

{% for package in [ 'gdmconman',
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
  pkg.removed
  
{% endfor %}
