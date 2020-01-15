andrewrothstein.bosh
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-bosh.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-bosh)

Installs the [bosh](https://bosh.io/) cli.

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.bosh
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
