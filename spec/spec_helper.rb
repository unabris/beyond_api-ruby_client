require "simplecov"

SimpleCov.start

require "bundler/setup"
require "dotenv/load"
require "beyond_api"


RSpec.configure do |config|
  ENV['RACK_ENV'] = 'test'

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:suite) do
    BeyondApi.setup do |config|
      # ==> Client configuration
      config.client_id = ENV['CLIENT_ID']
      config.client_secret = ENV['CLIENT_SECRET']

      # ==> Response configuration
      config.remove_response_key_underscores = true
      config.object_struct_responses = true
    end
  end
end
