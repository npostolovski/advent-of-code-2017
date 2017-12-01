class Captcha
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def answer
    numbers_with_matches = []

    array.each_with_index do |digit, i|
      # if i+1 == array.length
      #   if array[i] == array[0]
      #     numbers_with_matches << array[i]
      #     return numbers_with_matches
      #   end
      # end
      if array[i] == array[i+1]
        numbers_with_matches << array[i]
      end
    end
    numbers_with_matches.inject(0) { |sum, memo| sum + memo }
  end
end
