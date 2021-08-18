module SimplelogicaTheGame
  class Bullet
    include Sprite

    SPEED = 400 # pixels / second

    def initialize(x, y)
      self.initialize_sprite
      @image = $game.images[:bullet]
      @radius = 10
      @x = x
      @y = y
      @z = 1
    end

    def update
      # move upwards
      @y -= SPEED * $game.delta

      # collisions against enemies
      $game.enemies.each do |enemy|
        if self.colliding?(enemy)
          # destroy both enemy and bullet
          enemy.kill!
          self.kill!
          $game.score += enemy.points # increase score
          $game.fx[:kill].play(0.6) # play explosion sfx
        end
      end

      # destroy the laser when out of the screen
      self.kill! if @y < -15
    end
  end
end
