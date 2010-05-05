# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  #config.gem "hpricot"
  #config.gem "amazon-ecs"
  
  config.time_zone = 'Eastern Time (US & Canada)'
end

require 'amazon/ecs'
require 'yaml'

amazon_api_keys = YAML.load_file("#{RAILS_ROOT}/config/amazon_api_keys.yml")

Amazon::Ecs.configure do |options|
  options[:aWS_access_key_id] = amazon_api_keys["aws_access_key_id"]
  options[:aWS_secret_key] = amazon_api_keys["aws_secret_key"]
end