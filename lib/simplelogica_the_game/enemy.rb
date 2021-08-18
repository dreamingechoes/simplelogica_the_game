module SimplelogicaTheGame
  class Enemy
    include Sprite

    def initialize(num)
      self.initialize_sprite
      @x = rand($game.width)
      @y = -80
      @z = 1
      @image = $game.images[:"enemy_#{num}"]
      @radius = 20
      @delta = num

      # random horizontal and vertical speed
      @speed_x = [-1, 1].sample * rand(50)
      @speed_y = 100 + rand(200)
    end

    def update
      @x += @speed_x * $game.delta
      @y += @speed_y * $game.delta

      # collisions against the ship
      $game.ship.kill! if self.colliding?($game.ship)

      # destroy alien when out of the screen
      self.kill! if @y > $game.height + 25
    end

    def points
      @delta * 10
    end
  end
end
