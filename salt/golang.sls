
{% set goversion='1.7.1' %}


{% if grains.osarch == "x86_64" %}

/usr/local/go:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644

get tarball:
  cmd.run:
    - name: "wget https://storage.googleapis.com/golang/go{{ goversion }}.linux-amd64.tar.gz"
    - cwd: /tmp
    - unless: "test -f /tmp/go{{ goversion }}.linux-amd64.tar.gz"


untar:
  cmd.run:
    - name: "tar -xvf go*.tar.gz -C /usr/local/"
    - cwd: /tmp

~/.bashrc:
  file.append:
    - text:
      - "export GOROOT=/usr/local/go"
      - "export GOPATH=$HOME/golang"
      - "export PATH=$PATH:$GOROOT/bin"

source ~/.bashrc:
  cmd.run



{% endif %}