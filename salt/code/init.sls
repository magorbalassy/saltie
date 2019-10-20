install_vscode:
  cmd.run :
    - name: /usr/bin/snap install code --classic
    - unless : /usr/bin/snap list code
