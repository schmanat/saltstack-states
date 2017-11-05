#||||||||||  PILLAR
#            common users

users:
  mrx:
    uid: 1000
    gid: 1000
    groups:
      - root
      - mrx
      - adm
      - sudo 
      - cdrom
      - dip
      - lpadmin
    fullname: 'mrx'
    shell: /bin/bash
    ssh-keys:
      - ssh-rsa xxxyyyy