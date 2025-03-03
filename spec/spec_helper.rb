$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
Dir[File.dirname(__FILE__) + '/support/**/*.rb'].each { |f| require f }

require 'dotenv/load'
require 'athena_health'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.hook_into :typhoeus
end
