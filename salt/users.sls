
## Users

{% for user, args in pillar.get('users',{}).iteritems() %}

{{ user }}:
  group.present:
    - gid: {{ args['uid'] }}

  user.present:
    - fullname: {{ args['fullname'] }}
    - uid: {{ args['uid'] }}
    - gid: {{ args['uid'] }}
    - shell: {{ args['shell'] }}
    - home: /home/{{ user }}

{% endfor %}

