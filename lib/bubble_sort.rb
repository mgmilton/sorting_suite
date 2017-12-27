class BubbleSort

  ArrayError = "All elements of your array must be the same class for this algorithm to work"

  def sort(list)
    argument_raiser(list)
    array_error_raiser(list)
    list.sort
  end

  def argument_raiser(data, desired_datatype = Array)
    if data.class != desired_datatype
      raise ArgumentError
    end
  end

  def array_error_raiser(list_array)
    element_classes = list_array.map do |item|
      item.class
    end
    if element_classes.uniq.length != 1
      raise ArrayError
    end
  end
end


sorter = BubbleSort.new
sorter.sort([1,2,33,4])
