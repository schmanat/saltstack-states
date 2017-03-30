##### STATE FILE


# INFLUXDB
# ---------------------------------------
influxdb:
  pkgrepo.managed:
    - humanname: InfluxDB Repository - RHEL \$releasever
    - baseurl:  https://repos.influxdata.com/rhel/\$releasever/\$basearch/stable
    - gpgcheck: 1
    - enabled: 1
    - gpgkey: https://repos.influxdata.com/influxdb.key

  pkg.installed:
    - require:
      - pkgrepo: influxdb

  service:
    - running
    - name: influxdb
    - enable: True
    - require:
      - pkg: influxdb
    # - watch:
    #   - file: /etc/influxdb/influxdb.conf


# KAPACITOR
# ---------------------------------------
kapacitor:
  pkg.installed:
    - require:
      - pkgrepo: influxdb

  service:
    - running
    - name: kapacitor
    - enable: True
    - require: 
      - pkg: kapacitor
    # - watch:
    #   - file: /etc/kapacitor/kapacitor.conf  


# TELEGRAF
# ---------------------------------------
telegraf:
  pkg.installed:
    - require:
      - pkgrepo: influxdb

  service:
    - running
    - name: telegraf
    - enable: True
    - require: 
      - pkg: telegraf
    # - watch:
    #   - file: /etc/telegraf/telegraf.conf


# CHRONOGRAF
# ---------------------------------------
chronograf:
  pkg.installed:
    - require:
      - pkgrepo: influxdb

  service:
    - running
    - name: chronograf
    - enable: True
    - require: 
      - pkg: chronograf
