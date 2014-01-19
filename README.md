# puppet-ntp

####Table of Contents

1. [Overview - What is the NTP module?](#overview)
2. [Module Description - What does the module do?](#module-description)
3. [Setup - The basics of getting started with NTP](#setup)
4. [Usage - The classes, defined types, and their parameters available for configuration](#usage)
5. [Limitations - OS compatibility, etc.](#limitations)

## Overview

The NTP module installs, configures, and manages NTP.

## Module Description

The NTP module handles installing and configuring NTP across a range of operating systems and distributions.

## Setup

### What NTP affects

* /etc/ntp.conf

### Basics

Getting started with this module is as simple as specifying the following in your manifest:

```puppet
class { 'ntp': }
```

If you would like to customize your /etc/ntp.conf a bit, here is a brief example showing how you can specify specific time servers:

```puppet
class { 'ntp': servers => ['0.centos.pool.ntp.org', '1.centos.pool.ntp.org', '2.centos.pool.ntp.org'] }
```

## Usage

The following parameters are available in the NTP module:

* preferred_servers
* servers

## Limitations

This module has been built and tested against Puppet 3.0 and higher.

The module has been tested on:

* RedHat Enterprise Linux 6
* CentOS 6
* Ubuntu 12.04

Testing on other platforms has been light and cannot be guaranteed.
