# Solution 1
def next_number(n)
  # Get an array of element
  # 123 (to_s)=> '123' (split(''))=> ['1','2,'3']
  array = n.to_s.split('')
  # Return -1 if the numbers are all equal
  # if [1,1,1] (uniq)=> [1], return -1 as [1].length === 1
  return -1 if array.uniq.length === 1
  # Find all Permutations
  # ['1','2'] (permutation.to_a)=> [['1','2'],['2','1']]
  permutations = array.permutation.to_a
  # Converting array of string into integer and sort them
  # ['1','2'] (join)=> '12' (to_i)=> 12
  permutations = permutations.map{ |ar| ar.join.to_i}.sort
  # We only want permutations that are above n
  permutations = permutations.select{|i| i > n}
  # Return the first number of the permutations, or -1
  permutations[0] || -1
end

# Time Efficiency: Finding permutations take O(n!), whereas sorting takes O(nlogn), ended up with O(n!) time efficiency.
# Space Efficiency: O(1) only using an array to store permutations.