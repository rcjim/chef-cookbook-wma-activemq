#
# Cookbook:: wma-activemq
# Attributes:: default
#
# Copyright:: 2009-2017, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['wma-activemq']['mirror']  = 'https://repository.apache.org/content/repositories/releases/org/apache'
default['wma-activemq']['version'] = '5.14.5'
default['wma-activemq']['home'] = '/opt'
default['wma-activemq']['wrapper']['max_memory'] = '1024'
default['wma-activemq']['wrapper']['useDedicatedTaskRunner'] = 'true'
default['wma-activemq']['wrapper']['keystore_password'] = 'password'
default['wma-activemq']['wrapper']['truststore_password'] = 'password'
default['wma-activemq']['wrapper']['keystore_path'] = '%ACTIVEMQ_CONF%/broker.ks'
default['wma-activemq']['wrapper']['truststore_path'] = '%ACTIVEMQ_CONF%/broker.ts'

default['wma-activemq']['enabled'] = true
default['wma-activemq']['enable_stomp'] = true
default['wma-activemq']['use_default_config'] = false
default['wma-activemq']['install_java'] = true
# set to 'TLSv1,TLSv1.1,TLSv1.2'
# to disable sslv3 and protect against poodle
default['wma-activemq']['transport_protocols'] = nil
