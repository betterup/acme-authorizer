ENV['RAILS_ENV'] ||= 'test'

ENGINE_ROOT = File.join(File.dirname(__FILE__), '../')
TEST_APP_ROOT = File.expand_path('../dummy', __FILE__)

# Load environment.rb from the dummy app.
require File.join(TEST_APP_ROOT, 'config/environment')

abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'

# Load RSpec helpers.
Dir[File.join(ENGINE_ROOT, 'spec/support/**/*.rb')].each { |f| require f }

# Load migrations from the dummy app.
ActiveRecord::Migrator.migrations_paths = File.join(TEST_APP_ROOT, 'db/migrate')
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
end
