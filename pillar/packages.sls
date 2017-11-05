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

{% else %}
packages:
  - htop
{% endif %}

