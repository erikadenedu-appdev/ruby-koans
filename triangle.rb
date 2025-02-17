# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
    if a <= 0 or b <= 0 or c <= 0
    raise TriangleError, "Side Length Can't Be Negative"
  elsif a + b <= c or b + c <= a or a + c <= b
    raise TriangleError, "Side Length Too Short"
  end
  if a == b 
    case1 = 1
  else case1 = 0
  end 
  if b == c 
    case2 = 1 
  else case2 = 0
  end 
  if a == c  
    case3 = 1 
  else case3 = 0
  end 
  if case1 + case2 + case3 == 3 
    return :equilateral  
  elsif case1 + case2 + case3 == 1
    return :isosceles 
  else  
    return :scalene 
  end 
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
