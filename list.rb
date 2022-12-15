require_relative 'enums.rb'

class MyList
  include MyEnumerable
  
  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end

end

lis = MyList.new(1, 2, 8)
p lis.all? { |e| e < 5 }
p lis.any? {|e| e == 6}
p lis.filter {|e| e.even?}