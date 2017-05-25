def sum_two_smallest_numbers(numbers)
  smallest = numbers.sort
  smallest_sum = smallest[0] + smallest[1]
  puts smallest_sum
end

sum_two_smallest_numbers([15,2122,3303,46,51])
