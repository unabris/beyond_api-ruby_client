# frozen_string_literal: true

require "simplecov"

SimpleCov.start do
  add_filter ['spec']
  add_group 'Resources', 'lib/beyond_api/resources'
end

require 'faker'

require "bundler/setup"
require "dotenv/load"
require "beyond_api"
require "helpers/fixtures_helper"
require "factory_bot"

require File.expand_path('../lib/beyond_api.rb', __dir__)

# require_relative "../lib/beyond_api/ext.rb"

RSpec.configure do |config|
  ENV['RACK_ENV'] = 'test'

  config.include FixturesHelper
  config.include FactoryBot::Syntax::Methods

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:suite) do
    FactoryBot.find_definitions

    BeyondApi.setup do |config|
      # ==> Client configuration
      config.client_id = ENV['CLIENT_ID']
      config.client_secret = ENV['CLIENT_SECRET']

      # ==> Api configuration
      config.open_timeout = 2
      config.timeout = 10

      # ==> Response configuration
      config.remove_response_key_underscores = true
      config.object_struct_responses = true
    end
  end

  config.after(:suite) do
    session = BeyondApi::Session.new(api_url: ENV["SHOP_URL"])
    session.token.client_credentials

    products = session.products.all
    products.embedded.products.each do |product|
      session.products.delete(product.id)
    end
  end

  # AppRoot = File.expand_path(File.dirname("ext.rb"))

  # load "#{AppRoot}/lib/beyond_api/ext.rb"
end
