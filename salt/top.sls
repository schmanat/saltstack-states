#############  SALT TOP

{% set nodename = grains['nodename'] %}

base:
  '*':
    - common
    - packages
    - users
    - servers.{{ nodename }}

