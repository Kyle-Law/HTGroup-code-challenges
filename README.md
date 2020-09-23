# HTGroup Coding Challenges

> Coding Challenges of HT Group

![image](https://user-images.githubusercontent.com/55923773/89916161-e1e6f180-dc29-11ea-8d10-ff56f5d6b9c8.png)

## Efficiency

|             | Time | Space | Code |
| ----------- | ---- | ----- | ---- |
| Challenge 1 |      |       |
| Challenge 2 |      |       |

## Challenge 1 - Crispy Dollop

- Input: Int
- Output: int
- Assumption: Integer given is positive
- Edge Cases: Return -1 if there's no bigger number

### Idea 1 - Brute Force method

Example, Input = 123

1. Get an array of each element ([1,2,3])
2. Find all Permutations ([321,123,132,213,231,312])
3. Sort the permutations ([123,132,213,231,312,321])
4. Return Integer next to the input or -1 if not found

#### Efficiency

BigO of finding all permutation is n!, whereas BigO of sorting is O(nlogn), resulted in a O(n!) time efficiency.
Time: O(n!)
Space: O(1)

### Idea 2 - Pointer Method

1. Inspired by bubble sort, iterate inversely. (eg. starting from 3 in 123)
2. If the left number is smaller, swap places (eg. 2 is smaller than 3, swap 2 and 3)
3. Return the number
4. `Error: 132 will return 231 as 1 is smaller than 2, but the next number is 213.`
5. Refinement: re-arrange the number after being swap, eg. 1 and 2 being swap, re-arrange the numbers after 1. For instance, re-arrange 3 & 1 ascendingly into 13 instead of 31. Hence the answer becomes 213.
6. Example: eg. 15432, 2 and 1 swap as 1 is smaller than 2, then re-arrange ascendingly for numbers after 2. `15432 -> 24321 -> 21234`

### Other thoughts:

1. Using Stack and Queue,

## Challenge 2 - Scaling Umbrella

- Input: Matrix (array of array)
- Output: Array
- Assumption: No empty spot within the array (matrix is rectangular or square)
- Edge Cases: return empty array if there's no element

### Idea 1 - Brute Force Approach

- Get outer circle by adding first row, right column, last row, and left column.
- Create a new inner matrix
- Pass the new matrix into the function
- Base case: return nothing if the new matrix is empty

#### Efficiency:

Time:O(r x c) where r is number of rows, c is number of columns
Space: O(r)

#### Code

## Authors

👤 **Kyle Law**

- Github: [@Kyle-Law](https://github.com/Kyle-Law)
- Twitter: [@Kyle-Law](https://twitter.com/ZhunKhing)
- Linkedin: [Kyle law](https://www.linkedin.com/in/kyle-lawzhunkhing/)

## Acknowledgments

- HT Group
