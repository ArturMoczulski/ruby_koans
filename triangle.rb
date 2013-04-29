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

    raise TriangleError if  a <= 0 || b <= 0 || c <= 0 # any of the sides' lengths is negative or 0
    raise TriangleError if a + b <= c || a + c <= b || b + c <= a # any side is longer than other 2 sides

    pairs = [ [a, b], [b, c], [a, c] ]
    equal_pairs_count = 0
    pairs.each { |pair| equal_pairs_count+=1 if pair[0] == pair[1] }

    case equal_pairs_count
    when 0
        :scalene
    when 1
        :isosceles
    when 2
    when 3
        :equilateral
    end 

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
