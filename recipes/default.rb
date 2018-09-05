#
# Cookbook:: wma-activemq
# Recipe:: default
#

include_recipe 'java::default'

include_recipe 'wma-activemq::activemq_java_wrapper'
