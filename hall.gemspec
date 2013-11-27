# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hall/version'

Gem::Specification.new do |spec|
  spec.name          = "hall"
  spec.version       = Hall::VERSION
  spec.authors       = ["Alexander Berezovsky"]
  spec.email         = ["a.b@usa.com"]
  spec.description   = %q{Client for corporate messanger Hall}
  spec.summary       = %q{Client for corporate messanger Hall.com allow to post message to the chat room}
  spec.homepage      = "https://github.com/roundscope/hall"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.12.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "bundler", "~> 1.3"

  #Test stuff
  spec.add_development_dependency "rspec",   ">= 2.14"
  spec.add_development_dependency "rr",      ">= 1.1.2"
  spec.add_development_dependency "webmock", "1.8.0" # blocked by vcr
  spec.add_development_dependency "vcr",     ">= 2.7.0"
  spec.add_development_dependency "rdoc",    ">= 2.4.2"
end
