Delphix Configure Workshop Hosts
===================

<!-- [![Build Status](https://travis-ci.com/delphix/ansible-target-host.svg?branch=master)](https://travis-ci.com/delphix/ansible-target-host) -->

#### Table of Contents
1.  [Overview](#overview)
    *   [Role Variables](#variables)
    *   [Dependencies](#dependencies)
    *   [Example Playbook](#playbook)
2.  [Contribute](#contribute)
    *   [Code of conduct](#code-of-conduct)
    *   [Community Guidelines](#community-guidelines)
    *   [Contributor Agreement](#contributor-agreement)
3.  [Reporting Issues](#reporting-issues)
4.  [Statement of Support](#statement-of-support)
5.  [License](#license)

## <a id="overview"></a>Overview

This role is for use with the Delphix Toolchain Workshop/Lab environments. This role is used to configure AMI's to be preconfigured with hosts entries for all other workshop/lab systems on boot.

## <a id="variables"></a>Role Variables

Available variables are listed below, along with default values (see defaults/main.yml):

    domain_suffix: delphix.local
The domain suffix for the lab systems

    lab_systems:
      - { name: guacamole, last_octet: 5 }
      - { name: tooling, last_octet: 6 }
      - { name: delphixengine, last_octet: 10 }
      - { name: datical-server, last_octet: 16 }
      - { name: proddb, last_octet: 20 }
      - { name: devdb, last_octet: 30 }
      - { name: devweb, last_octet: 71 }
      - { name: testweb, last_octet: 73 }
      - { name: prodweb, last_octet: 72 }
The labs are configured to run in /24 networks. This list describes last octet that will be assigned to the lab systems (i.e. 10.0.1.5 for guacamole)


## <a id="dependencies"></a>Dependencies

None

## <a id="playbook"></a>Example Playbook

    - hosts: servers
      roles:
         - { role: delphix.configure-workshop-hosts }

## <a id="contribute"></a>Contribute

1.  Fork the project.
2.  Make your bug fix or new feature.
3.  Add tests for your code.
4.  Send a pull request.

Contributions must be signed as `User Name <user@email.com>`. Make sure to [set up Git with user name and email
address](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup). Bug fixes should branch from the current
stable branch. New features should be based on the `master` branch.

#### <a id="code-of-conduct"></a>Code of Conduct

This project operates under the [Delphix Code of Conduct](https://delphix.github.io/code-of-conduct.html). By
participating in this project you agree to abide by its terms.

#### <a id="contributor-agreement"></a>Contributor Agreement

All contributors are required to sign the Delphix Contributor agreement prior to contributing code to an open source
repository. This process is handled automatically by [cla-assistant](https://cla-assistant.io/). Simply open a pull
request and a bot will automatically check to see if you have signed the latest agreement. If not, you will be prompted
to do so as part of the pull request process.


## <a id="reporting_issues"></a>Reporting Issues

Issues should be reported [here](https://github.com/delphix/ansible-target-host/issues).

## <a id="statement-of-support"></a>Statement of Support

This software is provided as-is, without warranty of any kind or commercial support through Delphix. See the associated
license for additional details. Questions, issues, feature requests, and contributions should be directed to the
community as outlined in the [Delphix Community Guidelines](https://delphix.github.io/community-guidelines.html).

## <a id="license"></a>License

This is code is licensed under the Apache License 2.0. Full license is available [here](./LICENSE).

