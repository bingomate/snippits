def doUntilFalse firstInput, someProc
	input = firstInput
	output = firstInput

	while output #while 5 the input = the output 
		input = output
		output = someProc.call input # buildArrayOfSquares(5)
	end

	input
end

buildArrayOfSquares = Proc.new do |array|
	lastNumber = array.last
	if lastNumber <= 0
		false 
	else
		array.pop #5 to array

		array.push lastNumber * lastNumber

		array.push lastNumber-1
	end
end

alwaysFalse = Proc.new do |justIgnoreMe|
	false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse('Im writtin this at 3am', alwaysFalse)

#My understanding

#