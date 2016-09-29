#############  SALT TOP

base:
  '*':
    - common
    - packages
    - users

  'mrxmaster':
    - golang
#    - pkg_master

  'mrxartifactory':
    - artifactory

  'mrxteamcity':
    - teamcity
