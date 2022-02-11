# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  if config.files_to_run.one?
    config.default_formatter = "doc"
  end

  config.expect_with(:rspec) { |c| c.syntax = :should }
end

require "capybara/rspec"
require "capybara/cuprite"
Capybara.javascript_driver = :cuprite
Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(app,
    window_size: [1200, 800],
    browser_options: { 'no-sandbox': nil },
    inspector: ENV['INSPECTOR'],
    headless: !ENV['NO_HEADLESS']
  )
end

require 'middleman/rack'
Capybara.app = Middleman.server
Capybara.server = :puma
