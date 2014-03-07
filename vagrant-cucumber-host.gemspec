# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-cucumber-host/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-cucumber-host"
  spec.version       = Vagrant::Cucumber::Host::VERSION
  spec.authors       = ["Gareth Rushgrove"]
  spec.email         = ["gareth@morethanseven.net"]
  spec.description   = "Run cucumber features as a Vagrant provisioner"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  gem.add_dependency 'cucumber', '~> 1.3.0'
  gem.add_dependency 'httparty', '~> 0.10.0'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
