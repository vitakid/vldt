# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vldt/version"

Gem::Specification.new do |spec|
  spec.name          = "vldt"
  spec.version       = Vldt::VERSION
  spec.authors       = ["Marten Lienen"]
  spec.email         = ["marten.lienen@gmail.com"]
  spec.summary       = %q{Validate data, e.g. JSON, in ruby}
  spec.description   = %q{For more examples have a look into README.md}
  spec.homepage      = "https://github.com/CQQL/vldt"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "i18n", "~> 0"

  spec.add_development_dependency "bundler", "~> 1.4"
  spec.add_development_dependency "rake", "~> 10.1"
  spec.add_development_dependency "yard", "~> 0"
  spec.add_development_dependency "redcarpet", "~> 3"
  spec.add_development_dependency "rspec", "~> 2"
  spec.add_development_dependency "pry", "~> 0"
  spec.add_development_dependency "activesupport", "~> 4"
end
