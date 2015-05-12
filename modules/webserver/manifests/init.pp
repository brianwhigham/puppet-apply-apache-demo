class webserver {
  class{'apache':}
  class {'::apache::mod::php':}
  apache::vhost { 'demovdclb.bor.usg.edu':
    vhost_name     => '*',
    directoryindex => 'index.php',
    port           => '80',
    docroot        => '/var/www/html',
    servername     => ['demovdclb.bor.usg.edu',],
    serveraliases  => ['demovdclbpm1.bor.usg.edu',],
  }
  vcsrepo {"/var/www/html":
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/brianwhigham/puppet-apply-apache-website.git',
    revision => 'master',
  }
  cron {"update web site. 99.99999% of pulls will be useless.  Git hooks would be better so long as you keep it secure.  Do not follow the online examples of having apache git pull it's own repo.  The owner of the files and the user Apache runs as should be different.":
    command => "cd /var/www/html && git pull -q",
    user    => root,
    minute  => '*/5'
  }
}
