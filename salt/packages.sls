##########  STATE   #############


# common packages
{% for package in [ 'tree',
                    'wget',
                    'git',
                    'htop' ]
%}

{{ package }}:
  pkg.installed
  
{% endfor %}
  
