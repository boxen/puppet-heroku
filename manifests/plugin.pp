# Public: Install a heroku plugin.
#
# namevar - The name of the plugin.
# source  - The location of the git repository containing the plugin.
#
# Examples
#
#   heroku::plugin { 'foo':
#     source => 'https://github.com/heroku/foo',
#   }
define heroku::plugin($source) {
  require heroku::config

  repository { "${heroku::config::plugindir}/${name}":
    source => $source
  }
}
