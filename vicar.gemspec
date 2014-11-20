# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vicar/version'

Gem::Specification.new do |spec|
  spec.name          = "vicar"
  spec.version       = Vicar::VERSION
  spec.authors       = ["bibendi"]
  spec.email         = ["bibendi@bk.ru"]
  spec.summary       = %q{Presenters for Rails}
  spec.description   = ''
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "actionpack", ">= 3.1.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails", "~> 3.1"
  spec.add_development_dependency "combustion", "~> 0.5"
  spec.add_development_dependency "codeclimate-test-reporter"
end
