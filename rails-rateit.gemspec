# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rateit/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "rails-rateit"
  spec.authors       = ["José Antonio Yáñez Jiménez"]
  spec.email         = ["jose@jimenezfrontent.es"]
  spec.licenses      = ["CC-BY 4.0"]
  spec.description   = %q{Rails wrapper for the jQuery RateIt plugin}
  spec.summary       = %q{Rails assets pipeline compatible version of the jQuery RateIt plugin}
  spec.homepage      = "https://github.com/berikin/rails-rateit"

  spec.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir["test/**/*"]
  spec.require_paths = ["lib"]
  spec.version       = Rateit::VERSION
  spec.add_dependency "railties", ">= 3.2", "< 5.0"

  spec.add_development_dependency "activesupport", "~> 0"
  spec.add_development_dependency "sass-rails", "~> 0"
end
