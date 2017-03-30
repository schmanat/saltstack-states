##### STATE FILE

# Google Go Language

{% set goversion='1.7.1' %}


{% if grains.osarch == "x86_64" %}

get tarball:
  cmd.run:
    - name: 'wget https://storage.googleapis.com/golang/go{{ goversion }}.linux-amd64.tar.gz'
    - cwd: /root
    - unless: "test -d /usr/local/go"

untar:
  archive.extracted:
    - name: /usr/local
    - source: /root/go{{ goversion }}.linux-amd64.tar.gz
    - archive_format: tar
    - if_missing: /usr/local/go
  
cleanup tarball:
  cmd.run:
    - name: "rm -f /root/go{{ goversion }}.linux-amd64.tar.gz"
    - unless: "! test -f /root/go{{ goversion }}.linux-amd64.tar.gz"


## update Bashrc with paths
{% for user, args in pillar.get('users',{}).iteritems() %}

update_bashrc_{{ user }}:
  file.append:
    - name: /home/{{ user }}/.bashrc
    - makedirs: True
    - text: 
        - "export GOROOT=/usr/local/go"
        - "export GOPATH=$HOME/golang"
        - "export PATH=$PATH:$GOROOT/bin"
   
{% endfor %}

{% endif %}