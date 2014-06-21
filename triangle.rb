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

  raise TriangleError, "Negative side" if a <= 0 or b <= 0 or c <= 0
  raise TriangleError, "One Side Too Long" if a+b <= c or
                                              b+c <= a or
                                              a+c <= b
  equal_sides = 0
  equal_sides += 1 if a == b
  equal_sides += 1 if a == c
  equal_sides += 1 if b == c
  case equal_sides
  when 0
    return :scalene
  when 1
    return :isosceles
  when 3
    return :equilateral
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
