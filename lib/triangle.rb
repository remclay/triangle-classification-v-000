class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    :equilateral
    :isosceles
    :scalene
  end
end

class TriangleError < StandardError
 # triangle error code
end
