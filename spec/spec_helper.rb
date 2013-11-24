$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'hall'
require 'rspec'
require 'rspec/autorun'
require 'vcr'
require 'webmock'
require 'coveralls'

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock
end

Coveralls.wear!
