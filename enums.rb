module MyEnumerable
  
  def all? (&block)
    rtn = true
    each { |e|
      if (block.call(e) == false)
        rtn = false
      end
    } 
    return rtn 
  end

  def any?(&block)
    rtn = false
    each do |e|
      if (block.call(e))
        rtn = true
      end
    end
    return rtn
  end

  def filter(&block)
    result = []
    each do |e|
      if (block.call(e))
        result.push e
      end
    end
    return result
  end

end
