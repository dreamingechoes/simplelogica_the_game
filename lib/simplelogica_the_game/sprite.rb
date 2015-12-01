module SimplelogicaTheGame
  module Sprite

    attr_accessor :x, :y, :z, :angle, :image, :radius

    def initialize_sprite
      @killed = false
      @angle = 0
      @image = nil
      @image_index = 0
      @radius = 0 # circular boundign box size
      @x = 0
      @y = 0
      @z = 0
    end

    def killed?
      @killed
    end

    def kill!
      @killed = true
    end

    def colliding?(other)
      if @radius.zero? or other.radius.zero?
        false
      else
        Gosu::distance(@x, @y, other.x, other.y) < (@radius + other.radius)
      end
    end

    def draw
      @image.draw_rot(@x, @y, @z, @angle) unless @image.nil?
    end
    
  end
end
