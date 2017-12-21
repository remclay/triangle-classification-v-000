class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (@side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0) ||
      ((@side_1 + @side_2 <= @side_3)||(@side_2 + @side_3 <= @side_1)||(@side_1 + @side_3 <= @side_2))
      begin
        raise TriangleError
      end
    else
      if (@side_1 == @side_2 && @side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3)
        :scalene
      end
    end
  end
end

class TriangleError < StandardError
end
