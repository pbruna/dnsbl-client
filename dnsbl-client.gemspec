# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dnsbl/client/version'

Gem::Specification.new do |spec|
	spec.name          = "dnsbl-client"
	spec.version       = DNSBL::Client::VERSION
	spec.authors       = ["chrislee35"]
	spec.email         = ["rubygems@chrislee.dhs.org"]
	spec.description   = %q{simple interface to lookup blacklists results}
	spec.summary       = %q{queries various DNS Blacklists}
	spec.homepage      = "http://github.com/chrislee35/dnsbl-client"
	spec.license       = "MIT"

	spec.files         = `git ls-files`.split($/)
	spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
	spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
	spec.require_paths = ["lib"]

	spec.add_development_dependency "bundler", "~> 1.3"
	spec.add_development_dependency "rake"
end
