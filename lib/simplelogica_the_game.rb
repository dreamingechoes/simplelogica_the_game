require "simplelogica_the_game/version"
require "simplelogica_the_game/sprite"
require "simplelogica_the_game/bullet"
require "simplelogica_the_game/ship"
require "simplelogica_the_game/enemy"
require "simplelogica_the_game/game"

module SimplelogicaTheGame
  def self.init
    begin
      $game = SimplelogicaTheGame::Game.new
      $game.begin!
    rescue Interrupt => e
      puts "\r Something goes wrong! :("
    end
  end
end
