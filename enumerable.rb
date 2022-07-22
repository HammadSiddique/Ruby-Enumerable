module MyEnumerable
  def all?
    each do |elements|
      return false unless yield(elements)
    end
    true
  end

  def any?
    each do |elements|
      return true if yield(elements)
    end
    false
  end

  def filter
    arr = []
    each do |elements|
      arr << elements if yield(elements)
    end
    arr
  end
end
