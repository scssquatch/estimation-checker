# spec/spec_helper.rb
require 'rack/test'
require 'pry'
require File.expand_path '../../app/estimate.rb', __FILE__

ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

# For RSpec 2.x
RSpec.configure { |c| c.include RSpecMixin }
