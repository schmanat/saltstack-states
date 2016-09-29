##########  STATE   #############


# common packages

{% for package in pillar.get('packages') %}

{{ package }}:
  pkg.installed
  
{% endfor %}
  
