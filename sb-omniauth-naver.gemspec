# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-naver/version"

Gem::Specification.new do |spec|
  spec.name          = "sb-omniauth-naver"
  spec.version       = Omniauth::Naver::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ["archmagece"]
  spec.email       = ["archmagece@users.noreply.github.com"]

  spec.homepage    = "https://github.com/ScriptonBasestar/sb-omniauth-naver"
  spec.summary     = %q{OmniAuth strategy for Kakao}
  spec.description = %q{OmniAuth strategy for Kakao(http://developerspec.naver.com/)}
  spec.license     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.9'
  spec.add_dependency 'omniauth-oauth2', '~> 1.3'

  spec.add_development_dependency "bundler", "~> 2.6"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'guard-rspec', '~> 4.7'
  spec.add_development_dependency 'fakeweb', '~> 1.3'
  spec.add_development_dependency "minitest", "~> 5.25"
end
