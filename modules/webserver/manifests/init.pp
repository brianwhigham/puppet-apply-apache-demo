class webserver {
  class{'apache':}
  file{'/var/www/html/index.html':
    source => "puppet:///modules/webserver/index.html",
  }
}
