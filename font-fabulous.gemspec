# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'font-fabulous/version'

Gem::Specification.new do |spec|
  spec.name          = 'font-fabulous'
  spec.version       = FontFabulous::VERSION
  spec.authors       = ['Red Hat']

  spec.summary       = 'A fabulous iconset packaged as a font'
  spec.description   = 'A fabulous iconset packaged as a font'
  spec.homepage      = 'http://github.com/manageiq/font-fabulous'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- spec/*`.split("\n")
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.4'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'fontcustom', '~> 2.0.0'
end
