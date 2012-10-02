define heroku::plugin($source) {
  require heroku::config

  repository { "${heroku::config::plugindir}/${name}":
    source => $source
  }
}
