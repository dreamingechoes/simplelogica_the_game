module SimplelogicaTheGame
  class Ship
    include Sprite
    SPEED = 350 # pixels / second

    def initialize
      self.initialize_sprite
      @x = $game.width / 2
      @y = $game.height - 260
      @image = $game.images[:ship]
      @z = 10
      @radius = 30
    end

    def update
      # move horizontally if <- or -> are pressed
      @y -= SPEED * $game.delta if $game.button_down?(Gosu::KbUp)
      @y += SPEED * $game.delta if $game.button_down?(Gosu::KbDown)
      @x -= SPEED * $game.delta if $game.button_down?(Gosu::KbLeft)
      @x += SPEED * $game.delta if $game.button_down?(Gosu::KbRight)
      # clamp @x so the ship always stays inside the screen
      @x = [[@x, $game.width-80].min, 80].max
      @y = [[@y, $game.height-260].min, 80].max
    end
  end
end
