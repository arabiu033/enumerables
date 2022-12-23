module MyEnumerable
  def all?(&block)
    rtn = true
    each do |e|
      rtn = false if block.call(e) == false
    end
    rtn
  end

  def any?(&block)
    rtn = true
    each do |e|
      rtn = true if block.call(e)
    end
    rtn
  end

  def filter(&block)
    result = []
    each do |e|
      result.push e if block.call(e)
    end
    result
  end
end
