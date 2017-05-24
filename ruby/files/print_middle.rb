def get_middle(name)
  namearr = name.split(//)
  num = namearr.length
  result = num/2
    if num.even?
      puts "The middle 2 letters of #{name} is #{namearr[result - 1]} and #{namearr[result]}"
    else
      puts "The middle letter of #{name} is #{namearr[result]}"
    end
end


#name = ARGV
get_middle('justini')
