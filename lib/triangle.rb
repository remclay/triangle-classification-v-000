class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    :equilateral
    # side_1 == side_2 == side_3
    :isosceles
    # side_1 == side_2 || side_2 == side_3 || side_1 == side_3
    :scalene
    # side_1 != side_2 != side_3 != side_1
  end
end

class TriangleError < StandardError
 # triangle error code
end
