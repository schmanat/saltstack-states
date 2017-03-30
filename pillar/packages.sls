#||||||||||  PILLAR   ||||||||||


#    common packages

{% if grains.os_family == 'RedHat' %}
packages:
  - tree
  - wget
  - git
  - htop
  - python-pip
  - vim-enhanced
  
{% endif %}

