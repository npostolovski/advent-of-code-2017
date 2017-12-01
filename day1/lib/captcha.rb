require_relative './digit_matcher'

class Captcha
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def answer
    matching_numbers = []
    array.each_with_index do |digit, index|
      dm = DigitMatcher.new(array, index)
      if dm.last_digit_matches_first || dm.digit_matches_next
        matching_numbers << array[index]
      end
    end
    sum_of(matching_numbers)
  end

  private

  def sum_of(matching_numbers)
    matching_numbers.inject(0) { |sum, memo| sum + memo }
  end
end
