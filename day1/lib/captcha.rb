require_relative './digit_matcher'

class Captcha
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def answer
    numbers_with_matches = []

    array.each_with_index do |digit, index|
      matcher = DigitMatcher.new(array, index)
      if matcher.it_is_the_last_digit_in_array
        if matcher.last_digit_matches_first
          numbers_with_matches << array[index]
        end
      elsif digit_matches_next(index, array)
        numbers_with_matches << array[index]
      end
    end
    sum_of(numbers_with_matches)
  end

  private

  def sum_of(numbers_with_matches)
    numbers_with_matches.inject(0) { |sum, memo| sum + memo }
  end

  def digit_matches_next(i, array)
    array[i] == array[i+1]
  end
end
