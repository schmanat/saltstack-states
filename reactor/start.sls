{% if data['id'] == 'mrxteamcity' %}

highstate_run:
  cmd.state.highstate:
    - tgt: mrxteamcity

{% endif %}

