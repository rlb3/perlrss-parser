# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'perlrss/parser/version'

Gem::Specification.new do |spec|
  spec.name          = "perlrss-parser"
  spec.version       = Perlrss::Parser::VERSION
  spec.authors       = ["Robert Boone"]
  spec.email         = ["robert.l.boone@gmail.com"]
  spec.description   = %q{Parse the new perl module rss feed}
  spec.summary       = %q{Parse the new perl module rss feed}
  spec.homepage      = "https://github.com/rlb3/perlrss-parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
