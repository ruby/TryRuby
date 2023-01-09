# There is some kind of incompatibility between Capybara and Opal::Builder
# in prefork mode. Let's investigate it later.
ENV['OPAL_PREFORK_DISABLE'] = '1'

require 'middleman/rack'
require "capybara/rspec"
require "capybara/cuprite"

# Prefetch the first load, so that we don't timeout
Middleman.server.call("PATH_INFO" => "/javascripts/application.js", "SCRIPT_NAME" => "/")

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.default_formatter = "doc"

  config.expect_with(:rspec) { |c| c.syntax = :should }

  Capybara.javascript_driver = :cuprite
  Capybara.register_driver(:cuprite) do |app|
    Capybara::Cuprite::Driver.new(app,
      window_size: [1200, 800],
      browser_options: { 'no-sandbox': nil },
      inspector: ENV['INSPECTOR'],
      headless: !ENV['NO_HEADLESS'],
      timeout: 20,
      url_blacklist: [
        "https://docs.ruby-lang.org/", # It is quite a heavy website iframed on playground
                                      # and for testing, we don't need it to be present.
                                      # This should spare us from random test failures.
      ],
    )
  end

  Capybara.app = Middleman.server
  Capybara.server = :puma
end
