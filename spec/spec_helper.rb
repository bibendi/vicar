require 'bundler/setup'

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require 'combustion'

Combustion.initialize! :action_controller, :action_view

require 'rspec/rails'

RSpec.configure do |config|
end
