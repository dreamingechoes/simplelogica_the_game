# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplelogica_the_game/version'

Gem::Specification.new do |spec|
  spec.name          = "simplelogica_the_game"
  spec.version       = SimplelogicaTheGame::VERSION
  spec.authors       = ["Ivan Gonzalez"]
  spec.email         = ["ivan@simplelogica.net"]

  spec.summary       = "Simplelogica: The Game. A game developed in Ruby."
  spec.description   = "Simplelogica: The Game. A game developed in Ruby with the help of Gosu gem."
  spec.homepage      = "https://github.com/dreamingechoes/simplelogica_the_game"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "gosu", ">= 0.9.0"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
