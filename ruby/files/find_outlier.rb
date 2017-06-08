def find_outlier(integers)
  even_array = []
  odd_array = []

  for i in integers do
    if i.even?
      even_array.push(i)
    else
      odd_array.push(i)
    end
  end

  if even_array.length == 1
    puts "The outlier is #{even_array.to_s}"
  else
    puts "The outlier is #{odd_array.to_s}"
  end
end

find_outlier([1,2,3,4,5])
