##########  STATE  
#           common users          

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

bashrc_{{ user }}:
  file.managed:
    - name: /home/{{ user }}/.bashrc
    - user: {{ user }}
    - group: {{ user }}
    - mode: 644
    - source: salt://users/files/bashrc


{% endfor %}

