# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'legacy_assets/version'

Gem::Specification.new do |spec|
  spec.name          = "legacy_assets"
  spec.version       = LegacyAssets::VERSION
  spec.authors       = ["The Devpost team"]
  spec.email         = ["tech@devpost.com"]
  spec.description   = %q{Devpost assets}
  spec.summary       = %q{Devpost assets}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir["{app,lib,vendor}/**/*"] + %w(LICENSE README.md)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "railties"

  spec.add_dependency "sass"
  spec.add_dependency "bourbon", "3.1.6"
  # spec.add_dependency "neat"
end
