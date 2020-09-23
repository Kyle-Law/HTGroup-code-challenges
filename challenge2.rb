# Solution 1
def scaling_umbrella(matrix)
  # Starting with first row
  result = matrix[0]
  row = matrix.length
  return [] if row === 0 || matrix[0].length === 0
  column = matrix[0].length
  
  if row > 1
    # Pushing rightmost column, starting from 2nd row
    for i in 1...row do
      result.push(matrix[i][column-1])
    end
    # Pushing bottom row inversely, except the rightmost element 
    (column-2).downto(0) do |j|
      result.push(matrix[row-1][j])
    end
    # Pushing leftmost column, except top and bottom element
    if column > 1
      (row-2).downto(1) do |i|
        result.push(matrix[i][0])
      end
    end
  end
  
  # Add inner matrix as new matrix
  new_matrix = []
  for k in 1...row-1 do
    new_row = matrix[k][1...-1]
    new_matrix.push(new_row)
  end

  return result + spiral_order(new_matrix)
  
end