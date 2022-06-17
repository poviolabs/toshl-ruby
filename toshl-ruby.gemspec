# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'toshl/version'

Gem::Specification.new do |spec|
  spec.name          = 'toshl-ruby'
  spec.version       = Toshl::VERSION
  spec.authors       = ['Sebastjan Stojnsek']
  spec.email         = ['sebastjan.stojnsek@poviolabs.com']

  spec.summary       = 'Ruby bindings for the Toshl API'
  spec.description   = ''
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.6.8'

  spec.add_dependency 'rest-client'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'webmock'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
