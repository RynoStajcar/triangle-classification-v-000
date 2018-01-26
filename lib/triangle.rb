class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
        :isosceles
      else
        :scalene
      end
    end


    def validate_triangle
      real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
      [a, b, c].each { |s| real_triangle << false if s <= 0 }
      raise TriangleError if real_triangle.include?(false)
    end

  class TriangleError < StandardError
  end
end
