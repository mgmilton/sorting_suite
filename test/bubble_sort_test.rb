require './test/test_helper'
require './lib/bubble_sort'

class BubbleSortTest < MiniTest::Test

  def setup
    @sorter = BubbleSort.new
  end

  def test_sort_works_for_numbers
    assert_equal [1,2,4,33], @sorter.sort([1,2,33,4])
  end

  def test_sort_works_for_strings
    assert_equal ["a","b","c","d"], @sorter.sort(["d", "b", "a", "c"])
  end

  def test_sort_only_accepts_arrays
    assert_raises ArgumentError do
      @sorter.sort("d")
    end
  end

  def test_argument_raiser_defaults_to_array
    assert_raises ArgumentError do
      @sorter.argument_raiser("d")
    end
  end

  def test_array_error_raiser_only_accepts_certain_arrays
    assert_raises RuntimeError do
      @sorter.array_error_raiser(["d",2])
    end
  end


end
