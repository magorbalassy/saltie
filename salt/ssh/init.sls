ssh:
  pkg.installed:
    - name: openssh-server
  service.running:
    - enable: True
    - name: sshd
    - require:
      - pkg: openssh-server

