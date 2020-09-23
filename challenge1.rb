# Solution 1
def scripy_dollop(n)
  # Get an array of element
  array = n.to_s.split('')
  # Return -1 if the numbers are all equal
  return -1 if array.uniq.length === 1
  # Find all Permutations
  permutations = array.permutation.to_a
  # Converting array of string into integer and sort them
  permutations = permutations.map{ |ar| ar.join.to_i}.sort
  # We only want permutations that are above n
  permutations = permutations.select{|i| i > n}
  # Return the first number of the permutations, or -1
  permutations[0] || -1
end

# Time Efficiency: O(n!) Finding permutations take O(n!), whereas sorting takes O(nlogn), ended up with O(n!)
# Space Efficiency: O(1) only using an array to store permutations.

# Other Details:
# 123.to_s => '123'.split('')=> ['1','2,'3']
# if [1,1,1].uniq)=> [1], return -1 as [1].length === 1
# ['1','2'].permutation.to_a=> [['1','2'],['2','1']]
# ['1','2'].join=> '12'.to_i=> 12
