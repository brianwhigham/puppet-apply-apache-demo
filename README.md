to configure an apache web server with puppet apply (masterless puppet)

    yum install git puppet
    cd /tmp
    git clone git@github.com:brianwhigham/puppet-apply-apache-demo.git
    puppet module install puppetlabs/apache
    puppet module install puppetlabs/stdlib
    puppet module install puppetlabs/concat
    puppet apply --modulepath /tmp/puppet-apply-apache-demo/modules:/etc/puppet/modules /tmp/puppet-apply-apache-demo/manifests/site.pp
