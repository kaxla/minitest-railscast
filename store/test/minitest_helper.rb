ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "capybara/rails"
require "minitest/autorun"

class IntegrationTest < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
  register_spec_type(/integration$/, self)
end
