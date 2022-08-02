# Author: Thomas George Thomas
Select 
CASE
when A + B <= C or A + C <= B or B + C <= A then "Not A Triangle"
when A = B and B = C then "Equilateral"
when A = B or A = C or B = C then "Isosceles"
else "Scalene"
end as triangle_sides 
#In the question we don't have to give a column name to the type of triangle. Thus, we can just write END instead of END AS "Triangle_sides". 
from TRIANGLES
