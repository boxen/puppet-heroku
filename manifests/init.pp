# Public: Install Heroku toolbelt.
#
# Usage:
#
#   include heroku

class heroku {
  include boxen::config

  $root = "${boxen::config::home}/heroku"

  $curl = 'curl -s https://s3.amazonaws.com/assets.heroku.com/heroku-client/heroku-client.tgz'
  $tar  = 'tar zxv - --strip-components 1'

  file {
    $root:
      ensure => directory ;
    "${boxen::config::envdir}/heroku.sh":
      ensure => absent ;
  }

  boxen::env_script { 'heroku':
    priority => 'lower',
    source   => 'puppet:///modules/heroku/heroku.sh',
  }

  exec { 'install heroku standalone toolbelt':
    command => "${curl} | ${tar}",
    cwd     => $root,
    creates => "${root}/bin/heroku"
  }
}
