
### common Packages pillar

{% if grains.os == 'RedHat' %}

packages:
  - tree
  - wget
  - git
  - htop

{% endif %}
