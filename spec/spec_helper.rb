require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  config.color_mode = :on
  config.formatter = :progress
  config.log_level = :error
end

at_exit { ChefSpec::Coverage.report! }
