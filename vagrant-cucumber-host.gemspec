# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-cucumber-host/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-cucumber-host"
  spec.version       = VagrantPlugins::CucumberHost::VERSION
  spec.authors       = ["Gareth Rushgrove"]
  spec.email         = ["gareth@morethanseven.net"]
  spec.description   = %q{Run cucumber features as a Vagrant provisioner}
  spec.summary       = spec.description 
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'cucumber', '~> 1.3.0'
  spec.add_dependency 'httparty', '~> 0.10.0'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
