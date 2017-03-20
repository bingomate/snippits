#Block passed in single line
addition = lambda {|a, b| a + b}
puts addition.call(5,5)

#Block passed in multiple lines

addition = labmda {|a,b|
a + b 
}
puts addition.call(5,5)

#No block. Using do-end instead

addition = lambda do |a,b|
  a + b
end
puts addition.call(5, 5)

addition = lambda do | a,b |; a + b end
puts addition.call(5,5)