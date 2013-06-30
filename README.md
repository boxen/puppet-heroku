# Heroku Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-heroku.png?branch=master)](https://travis-ci.org/boxen/puppet-heroku)

Install [Heroku](http://heroku.com) CLI and/or plugins.

## Install CLI

```puppet
include heroku
```

## Install Plugins with CLI

```puppet
heroku::plugin { 'accounts':
  source => 'ddollar/heroku-accounts'
}
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
