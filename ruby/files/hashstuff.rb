
def modcounter()

	t = {a:1, b:2, c:3, d:4, e:5}
	res = 0
	t.each {|x,y| res+=y if y%2 !=0}
	#t.each {|x,y| puts "#{x} #{y}"}
	puts res

	#t.each {|x,y| puts "#{x} #{y}"}

end


def charcounter()
	text = "This is totally new to me I have no idea what I'm doing"
	text.downcase!
	freqs = {}
	freqs.default = 0

	text.each_char{ |char| freqs[char] += 1}

	("a".."z").each{ |x| puts "#{x} : #{freqs[x]}" }
end

charcounter()