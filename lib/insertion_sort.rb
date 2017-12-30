class InsertionSort
  
  ArrayError = "All elements of your array must be the same class for this algorithm to work"

  def sort(list, i = 1)
    argument_and_array_checker(list)
    return list if list.length <= 1
    insertion_starter(list, i)
    list
  end

  def insertion_starter(list, i)
    while i < list.length
      j = i
      insertion_rearranger(list, i, j)
      i += 1
    end
  end

  def insertion_rearranger(list, i, j)
    while j > 0 && list[j-1] > list[j]
      list_rearranger(list, i, j)
      j -= 1
    end
  end

  def list_rearranger(list, i, j)
    list[j-1], list[j] = list[j], list[j-1]
  end

  def argument_and_array_checker(list)
    argument_raiser(list)
    array_error_raiser(list)
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
