/usr/share/keyrings/cloud.google.gpg:
  file.managed:
    - source: https://packages.cloud.google.com/apt/doc/apt-key.gpg
    - skip_verify: True
    - user: root
    - group: root
    - mode: 644

google_cloud_sdk_repository:
  pkgrepo.managed:
    - humanname: Google Cloud SDK
    - name: deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main
    - dist: stable
    - file: /etc/apt/sources.list.d/google-cloud-sdk.list
    - gpgcheck: 0
    - key_url: https://packages.cloud.google.com/apt/doc/apt-key.gpg

google-cloud-sdk:
  pkg.installed:
    - pkgs : 
      - google-cloud-sdk
      - google-cloud-sdk-app-engine-python
      - google-cloud-sdk-app-engine-python-extras
      - google-cloud-sdk-datastore-emulator
    - require:
      - pkgrepo: google_cloud_sdk_repository

