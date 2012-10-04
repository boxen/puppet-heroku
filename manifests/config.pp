# Internal: Prepare your system for heroku plugins.
#
# Examples
#
#   include heroku::config
class heroku::config {
  $dir       = "/Users/${::luser}/.heroku"
  $plugindir = "${dir}/plugins"

  file { [$dir, $plugindir]:
    ensure => directory
  }
}
