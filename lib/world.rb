module MartianRobots
  class World
    attr_reader :height, :width

    def initialize(height, width)
      raise ArgumentError.new("Not a valid number") if height > 50
      raise ArgumentError.new("Not a valid number") if width  > 50
      raise ArgumentError.new("Not a valid number") if height < 0
      raise ArgumentError.new("Not a valid number") if width  < 0
      @height = height
      @width  = width
    end
  end
end