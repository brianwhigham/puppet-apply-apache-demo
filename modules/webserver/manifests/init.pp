class webserver {
  class{'apache':}
  file{'/var/www/index.html':
    source => "puppet:///modules/webserver/index.html",
  }
}
