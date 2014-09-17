module MartianRobots
  class World
    attr_reader :width, :height

    def initialize(width, height)
      raise ArgumentError.new("Not a valid number") if height > 50
      raise ArgumentError.new("Not a valid number") if width  > 50
      raise ArgumentError.new("Not a valid number") if height < 0
      raise ArgumentError.new("Not a valid number") if width  < 0
      @width  = width
      @height = height
    end

    def grid
      Array.new(height) { Array.new(width, "") }
    end
  end
end