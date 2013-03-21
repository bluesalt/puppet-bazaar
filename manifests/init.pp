# Public: Install bazaar from homebrew.
#
# Examples
#
#   include bazaar

class bazaar{
  require homebrew

  homebrew::formula { 'bazaar':
    before => Package['boxen/brews/bazaar'],
  }

  package { 'boxen/brews/bazaar':
    ensure => '2.5.1-boxen1',
  }
}
