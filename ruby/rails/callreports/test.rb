arry = ['00:01:24','00:01:24']


def test_sum_with_loop
    arry = ['00:01:24','00:01:24']
    sum = 0
    for x in arry do
	x.gsub! ':', ''
    end
    for x in 0..arry.length do
			sum += arry[x].to_i
    end
    
    total = sum * 0.6 / 60
    puts total
end
test_sum_with_loop




