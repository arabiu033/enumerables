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

end
