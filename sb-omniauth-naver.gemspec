# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-naver/version"

Gem::Specification.new do |spec|
  spec.name          = "sb-omniauth-naver"
  spec.version       = Omniauth::Naver::VERSION
  spec.authors     = ["archmagece"]
  spec.email       = ["archmagece@users.noreply.github.com"]

  spec.summary       = %q{OmniAuth strategy for Naver}
  spec.description   = %q{OmniAuth strategy for Naver(https://developers.naver.com)}
  spec.homepage      = "http://github.com/kimsuelim/omniauth-naver"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.3.1'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 2.14', '>= 2.14.1'
  spec.add_development_dependency 'guard-rspec', '~> 4.2', '>= 4.2.8'
  spec.add_development_dependency 'fakeweb', '~> 1.3', '>= 1.3.0'
  spec.add_development_dependency "minitest", "~> 5.0"
end
