class Compare
  include Comparable
  attr :num
  def initialize(num)
    @num = num
  end

  def <=>(other)
    num <=> other
  end
end

  n1 = Compare.new('5')
  n2 = Compare.new('6')

test = n1 < n2
puts test
