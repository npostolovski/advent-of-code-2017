class Captcha
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def answer
    numbers_with_matches = []

    array.each_with_index do |digit, i|
      if it_is_the_last_digit_in_array(i, array)
        if last_digit_matches_first(i, array)
          numbers_with_matches << array[i]
        end
      elsif digit_matches_next(i, array)
        numbers_with_matches << array[i]
      end
    end
    sum_of(numbers_with_matches)
  end

  private

  def sum_of(numbers_with_matches)
    numbers_with_matches.inject(0) { |sum, memo| sum + memo }
  end

  def it_is_the_last_digit_in_array(i, array)
    i + 1 == array.length
  end

  def last_digit_matches_first(i, array)
    array[i] == array[0]
  end

  def digit_matches_next(i, array)
    array[i] == array[i+1]
  end
end
