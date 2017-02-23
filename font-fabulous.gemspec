# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'font-fabulous/version'

Gem::Specification.new do |spec|
  spec.name          = "font-fabulous"
  spec.version       = FontFabulous::VERSION
  spec.authors       = ["Eric Winchell", "Dávid Halász"]

  spec.summary       = "A fabulous iconset packaged as a font"
  spec.description   = "A fabulous iconset packaged as a font"
  spec.homepage      = "http://github.com/manageiq/font-fabulous"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "fontcustom", "~> 1.3.8"
end
