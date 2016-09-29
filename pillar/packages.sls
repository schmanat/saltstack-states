#||||||||||  PILLAR   ||||||||||


#    common packages

{% if grains.os_family == 'RedHat' %}
packages:
  - tree
  - wget
  - git
  - htop
  
{% endif %}

