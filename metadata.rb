name             'wma-activemq'
maintainer       'Jim Morris'
maintainer_email 'jmorris@usgs.gov'
license          'Apache-2.0'
description      'Installs activemq and sets it up as service'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version '>= 12.14' if respond_to?(:chef_version)
version          '0.0.1'

recipe 'wma-activemq::default', 'Installs Apache ActiveMQ and sets up the service using the included init script.'

issues_url 'https://github.com/USGS-CIDA/chef-cookbook-wma-activemq/issues'
source_url 'https://github.com/USGS-CIDA/chef-cookbook-wma-activemq'

%w(ubuntu debian redhat centos suse opensuse opensuseleap scientific oracle amazon).each do |os|
  supports os
end

depends 'java'
