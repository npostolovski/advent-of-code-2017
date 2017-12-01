class DigitMatcher
  attr_reader :array, :index

  def initialize(array, index)
    @array = array
    @index = index
  end

  def last_digit_matches_first
    if it_is_the_last_digit_in_array
      last_element = array[index]
      first_element = array[0]
      last_element == first_element
    else
      false
    end
  end

  def digit_matches_next
    array[index] == array[index + 1]
  end

  private

  def it_is_the_last_digit_in_array
    index + 1 == array.length
  end
end
