require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'

abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
# Limpieza de datos al finalizar cada test
require 'database_cleaner'
# Generador de data aleatorio
require 'faker'

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end
RSpec.configure do |config|

  # Acepta los datos que vienen los archivo FactoryBot
  config.include FactoryBot::Syntax::Methods

  # Permite recibir metodos auxiliares configurados en el application_helper.rb
  config.include ApplicationHelper

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end
  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end
  config.before(:each, :js => true) do
    DatabaseCleaner.strategy = :truncation
  end
  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
  config.before(:all) do
    DatabaseCleaner.start
  end
  config.after(:all) do
    DatabaseCleaner.clean
  end

  config.use_transactional_fixtures = false

  config.before(:each) do
    ActiveJob::Base.queue_adapter = :test
  end

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
end