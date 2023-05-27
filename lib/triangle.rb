class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    validate_triangle
  end

  def kind
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles    
    else
      :scalene    
    end
  end

  private
  def validate_triangle
    if side1 <= 0 || side2 <=0 || side3 <= 0
      raise TriangleError, "Sides must have a positive length"
    elsif side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1
      raise TriangleError, "The sum of any two sides must be greater than the third side."
    end
  end

  class TriangleError < StandardError
  end
end

