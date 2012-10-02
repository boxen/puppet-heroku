class heroku::config {
  $dir       = "/Users/${::luser}/.heroku"
  $plugindir = "${dir}/plugins"

  file { [$dir, $plugindir]:
    ensure => directory
  }
}
