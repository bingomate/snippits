def longest(a1, a2)
  first = a1.split(//).sort.uniq
  second = a2.split(//).sort.uniq
  first_l = first.length
  second_l = second.length

  if first_l > second_l
    puts first
  elsif second_l > first_l
    puts second
  else
    puts "Both strings are equal"
  end
end

longest('aaabbbbbxxxxx', 'hhhkkkkllliii')
