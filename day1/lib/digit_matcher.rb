class DigitMatcher
  attr_reader :array, :index

  def initialize(array, index)
    @array = array
    @index = index
  end

  def it_is_the_last_digit_in_array
    index + 1 == array.length
  end

  def last_digit_matches_first
    array[index] == array[0]
  end
end