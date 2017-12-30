class InsertionSort

  def sort(list)
    i = 1
    while i < list.length
      j = i
      while j > 0  && list[j-1] > list[j]
        list_rearranger(list, i, j)
        j -= 1
      end
      i += 1
    end
    list
  end


  def list_rearranger(list, i, j)
    list[j-1], list[j] = list[j], list[j-1]
  end

end


sorter = InsertionSort.new
p sorter.sort([1,202,2,3,44,5])
p sorter.sort(["d", "b", "a", "c"])
