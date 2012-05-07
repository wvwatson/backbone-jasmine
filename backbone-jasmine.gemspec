# -*- encoding: utf-8 -*-
require File.expand_path('../lib/backbone-jasmine/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Wavell Watson"]
  gem.email         = ["wavell.watson@gmail.com"]
  gem.description   = %q{Generates tests for backbone.js within rails}
  gem.summary       = %q{Generates tests using Jasmine and Sinon}
  gem.homepage      = "https://github.com/wavell/backbone-jasmine"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "backbone-jasmine"
  gem.require_paths = ["lib"]
  gem.version       = BackboneJasmine::VERSION

	gem.add_dependency "jquery-rails" 
	gem.add_dependency "backbone-on-rails" 
	gem.add_development_dependency "jasmine" 
  gem.files        = Dir["{lib}/**/*", "[A-Z]*"]
	gem.require_path = "lib"

end
