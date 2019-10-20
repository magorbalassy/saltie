cron_updatedb:
  cron.present:
    - name: /usr/bin/updatedb
    - user: root
    - minute: 0
    - hour: 0
