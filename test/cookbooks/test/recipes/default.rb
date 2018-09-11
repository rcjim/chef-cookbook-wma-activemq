apt_update

# make sure we have java installed
include_recipe 'java'

wma_activemq_install 'main_queue'
