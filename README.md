to configure an apache web server with puppet apply (masterless puppet)

    yum install git puppet
    cd $TMPDIR
    git clone git@github.com:brianwhigham/puppet-apply-apache-demo.git
    puppet module install puppetlabs/apache
    puppet apply --modulepath /tmp/puppet-apply-apache-demo /tmp/puppet-apply-apache-demo/manifests/site.pp
