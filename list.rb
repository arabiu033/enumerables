# require_relative 'enums.rb'

class MyList
  # include MyEnumerable
  def initialize(*args)
    @list = args
  end

  def all?
    @list.each { |e| yield e}
  end

end

lis = MyList.new(1, 2, 3)
p lis.all?