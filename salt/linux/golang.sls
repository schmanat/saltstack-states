##### STATE FILE

# Google Go Language

{% set goversion='1.9.2' %}
{% set install_dir='/opt/golang' %}


{% if (grains.osarch == "x86_64" or grains.osarch == "amd64") %}

"{{ install_dir }}":
  file.directory:
    - mode: 755
    - makedirs: True

get tarball:
  cmd.run:
    - name: 'wget https://storage.googleapis.com/golang/go{{ goversion }}.linux-amd64.tar.gz'
    - cwd: {{ install_dir }}
    - unless: "test -d /usr/local/go"

untar:
  archive.extracted:
    - name: /usr/local
    - source: {{ install_dir }}/go{{ goversion }}.linux-amd64.tar.gz
    - archive_format: tar
    - if_missing: /usr/local/go
  
cleanup tarball:
  cmd.run:
    - name: "rm -f {{ install_dir }}"
    - unless: "! test -f {{ install_dir }}"


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
