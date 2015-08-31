# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'attributes_for/version'

Gem::Specification.new do |spec|
  spec.name          = "attributes_for"
  spec.version       = AttributesFor::VERSION
  spec.authors       = ["Ole J. Rosendahl"]
  spec.email         = ["ole.johnny.rosendahl@gmail.com"]

  spec.summary       = "ActiveView Helper to present formatted ActiveModel attributes with icons."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/blacktangent/attributes_for"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "app"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.3"
  spec.add_development_dependency "coveralls"

  spec.add_dependency 'rails', '~> 4.0'
  spec.add_dependency 'font-awesome-rails', '~> 4.0'
  spec.add_dependency 'chronic_duration', '~> 0.10'
  spec.add_dependency 'phony_rails', '~> 0.12'
end
