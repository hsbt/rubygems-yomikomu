# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "rubygems-yomikomu"
  spec.version       = "0.1.0"
  spec.authors       = ["SHIBATA Hiroshi"]
  spec.email         = ["hsbt@ruby-lang.org"]

  spec.summary       = %q{rubygems hooks for yomikomu}
  spec.description   = %q{rubygems hooks for yomikomu}
  spec.homepage      = "https://github.com/hsbt/rubygems-yomikomu"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '~> 2.3.0dev'

  spec.add_dependency "yomikomu"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
