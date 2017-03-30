
#sayhello:
#  local.cmd.run:
#    - tgt: {{ data['id'] }}
#    - arg:
#      - echo {{ data['id'] }} > /tmp/hello

test_reactor:
  local.state.apply:
    - tgt: {{ data['id'] }}
