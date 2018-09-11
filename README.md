# wma-activemq Cookbook

Provides resources for installing Apache ActiveMQ and managing the Apache ActiveMQ service for use in wrapper cookbooks. Installs from tarballs from the Apache.org website by default.

This cookbook is a copy of the activemq cookbook from
https://github.com/chef-cookbooks/activemq with the only difference
being the name change and the removal of the version lock on the Java
cookbook.

## Requirements

### Platforms

- Debian/Ubuntu
- RHEL/CentOS/Scientific/Amazon/Oracle

### Chef

- Chef 12.7+

### Cookbooks

- java

## Attributes

- `node['wma-activemq']['mirror']` - download URL up to the activemq/apache-activemq directory.
- `node['wma-activemq']['version']` - version to install.
- `node['wma-activemq']['home']` - directory to deploy to (/opt by default)
- `node['wma-activemq']['wrapper']['max_memory']` - maximum amount of memory to use for wma-activemq.
- `node['wma-activemq']['wrapper']['useDedicatedTaskRunner']` - whether to use the dedicated task runner
- `node['wma-activemq']['enable_stomp']` - Flag that decides whether or not to use stomp. Note: This is only used when `use_default_config` attribute is true.
- `node['wma-activemq']['use_default_config']` - Flag that allows the option to use a basic configuration file
- `node['wma-activemq']['install_java']` - Whether or not to use the Java community cookbook to install Java. Defaults to `true`.
- `node['wma-activemq']['enabled']` - Whether or not the ActiveMQ service should be started. Defaults to `true`.

## Usage

Due to the complexity of configuring ActiveMQ it's not possible to create a single solution that solves everyone's potential desired configuration. Instead this cookbook provides resources for installing and managing the ActiveMQ service, which are best used in your own wrapper cookbook. The best way to understand how this could be used is to look at the docs_example test recipe located at test/cookbooks/test/recipes/docs_example.rb

## Resources

### wma-activemq_install

The wma-activemq_install resource installs an instance of the Apache ActiveMQ binary direct from Apache's mirror site. As distro packages are not used we can easily deploy per-instance installations and any version available on the Apache archive site can be installed.

#### Properties

* `instance_name`, String
* `version`, String. The version to install. Default: '5.12.0'
* `home`, String. The top level directory to install software. Default: '/opt'
* `install_path`, String. The full level path to install software.
* `tarball_base_path`, String. The base path to the location containing the binary package of ActiveMQ. Default: 'http://archive.apache. org/dist/activemq/'
* checksum_base_path, String, The base path to the location containing the checksum file.   default: 'http://archive.apache.org/dist/activemq/'
* exclude_docs, [true, false], default: true
* exclude_examples, [true, false], default: true
* exclude_webapp_demo, [true, false], default: true
* tarball_uri, String
* activemq_user, String  user to run activemq  
* activemq_group, String group to run activemq

#### Example

```
# Install hello instance of activemq
wma-activemq_install 'hello' do
  version '5.12.0'
end
```

## License

**Copyright:** 2008-2017, Chef Software, Inc.

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
