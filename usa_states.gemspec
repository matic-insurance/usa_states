# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'usa_states/version'

Gem::Specification.new do |spec|
  spec.name          = 'usa_states'
  spec.version       = UsaStates::VERSION
  spec.authors       = ['Sergey Kukunin']
  spec.email         = ['sergey.kukunin@gmail.com']

  spec.summary       = 'Simple Hash with all USA States'
  spec.description   = 'Simple Hash, that provides full list of USA states'
  spec.homepage      = 'https://github.com/matic-insurance/usa_states'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
