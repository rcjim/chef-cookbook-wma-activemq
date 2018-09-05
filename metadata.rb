name             'wma-activemq'
maintainer       'Jim Morris'
maintainer_email 'jmorris@usgs.gov'
license          'CPL-1.0'
description      'Installs/Configures activemq'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
supports         'redhat', '>= 6.8'
supports         'centos', '>= 6.8'
chef_version '>= 12.14' if respond_to?(:chef_version)
version          '0.0.1'

issues_url 'https://github.com/USGS-CIDA/chef-cookbook-wma-activemq/issues'
source_url 'https://github.com/USGS-CIDA/chef-cookbook-wma-activemq'

depends 'activemq', '>= 3.0.0'
depends 'java', '>= 2.0'
