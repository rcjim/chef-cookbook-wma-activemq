# frozen_string_literal: true
require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  config.color_mode = :on
  config.formatter = :progress
  config.log_level = :error
  config.platform = 'centos'
  config.version = '6.8'
end

at_exit { ChefSpec::Coverage.report! }
