laclasse-annuaire Ansible playbook
==================================

[![Travis CI](http://img.shields.io/travis/erasme/ansible-laclasse-annuaire.svg?style=flat)](http://travis-ci.org/erasme/ansible-laclasse-annuaire)
[![test-suite](http://img.shields.io/badge/ansible--roles--specs-ansible--laclasse--annuaire-blue.svg?style=flat)](https://github.com/erasme/ansible-roles-specs/tree/master/ansible-laclasse-annuaire/)
[![Ansible
Galaxy](http://img.shields.io/badge/galaxy-erasme.laclasse--annuaire-660198.svg?style=flat)](https://galaxy.ansible.com/list#/roles/3025)

This role will install laclasse annuaire.

Requirements
------------



Role Variables
--------------

TBD

    laclasse:
      log_parent_dir: /var/log
      pid_dir: /var/run/
      smtp:
        server: some.smtp.server
        port: 587
        startls: true
      services:
        annuaire: 
          description: 'Annuaire'
          title: 'Annuaire'
          app_id: 'ANNUAIRE'
          api_key: ''
          api_mode: ''
          bootstrap_key: http://someurl/
          deploy_user: erasme
          path: '/'
          port: 9292
          redis_root: 'someroot'
          repos: https://github.com/laclasse-com/service-annuaire.git
          version: 'master'
          database:
            name: dbname
            user: username
            host: dbhost
            password: "password"
          packages:
            - libmysqlclient-dev
            - libmagickcore-dev
            - libmagickwand-dev

Tags
----

  - `laclasse`: main transversal tag for laclasse
  - `laclasse:annuaire`: whole role tag specific to annuaire role

Dependencies
------------

  - [erasme.rbenv](https://github.com/erasme/ansible-rbenv)
  - [erasme.ruby-compiled](https://github.com/erasme/ansible-ruby-compiled)

Example Playbook
----------------

TBD

Running specs
-------------

    vagrant up
    vagrant ssh -c 'specs'

License
-------

MIT

Author Information
------------------

Created for @erasme by @leucos.

