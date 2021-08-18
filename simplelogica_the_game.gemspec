# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'simplelogica_the_game/version'

Gem::Specification.new do |spec|
  spec.name          = "simplelogica_the_game"
  spec.version       = SimplelogicaTheGame::VERSION
  spec.authors       = ["Ivan Gonzalez"]
  spec.email         = ["hi@dreamingecho.es"]

  spec.summary       = "Simplelogica: The Game. A game developed in Ruby."
  spec.description   = "Simplelogica: The Game. A game developed in Ruby with the help of Gosu gem."
  spec.homepage      = "https://github.com/dreamingechoes/simplelogica_the_game"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   << 'simplelogica_the_game'
  spec.require_paths = ["lib"]

  spec.add_dependency "gosu", "~> 1.2.0"
  spec.add_development_dependency "bundler", "~> 2.2.21"
  spec.add_development_dependency "rake", "~> 13.0.6"
end
