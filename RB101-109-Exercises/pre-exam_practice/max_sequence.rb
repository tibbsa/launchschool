## Practice exercise given in demo videos at 
## https://launchschool.com/lessons/3ce27abc/assignments/a3295d50

# Find the greatest sum achievable based on a contiguous subarray
# max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])
#  - biggest subarray (sum 6) = 4, -1, 2, 1

# empty subarray ([]) = 0
# all negative array: return 0

def get_subarrays(arr)
  subarrays = []
  0.upto(arr.size - 1) do |start_pos|
    (start_pos + 1).upto(arr.size) do |end_pos|
      subarrays << arr[start_pos..end_pos]
    end
  end
  subarrays
end

def max_sequence(arr)
  # return 0 if all numbers are negative
  return 0 if arr.all? { |num| num < 0 }

  max_sum = 0

  get_subarrays(arr).each do |subarray|
    max_sum = [max_sum, subarray.sum].max
  end
  
  # get_subarrays(arr).max_by { |subarray| subarray.sum }
  
  max_sum
end

p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([]) == 0
p max_sequence([-32]) == 0
p max_sequence([-7, 1, -7, 4, -10, 2, 1, 5, 4]) == 12