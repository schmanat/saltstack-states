# MICROSOFT VSCODE - salt formula

vscode:
  pkg.installed:
    - name: vscode


# install VSCODE extensions
extensions:
  - PeterJausovec.vscode-docker
  - Tyriar.sort-lines
  - Tyriar.terminal-tabs
  - adamvoss.yaml
  - bitzl.vscode-puppet
  - capaj.spec-runner
  - djabraham.vscode-yaml-validation
  - donjayamanne.python
  - gerane.Theme-Aurora
  - gerane.Theme-Monokai-Cobalt
  - haaaad.ansible
  - infosec-intern.snort
  - jamesmaj.easy-icons
  - karunamurti.rspec-snippets
  - lkytal.FlatUI
  - lukasz-wronski.ftp-sync
  - ms-vscode.Theme-MarkdownKit
  - rebornix.Ruby
  - rogalmic.bash-debug
  - timonwong.ansible-autocomplete
  - wholroyd.jinja

{% for ext in extensions %}

{{ ext }}:
  cmd.run:
    - name: "code --install-extension {{ ext }}"
{% endfor %}
