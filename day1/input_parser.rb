class InputParser
  attr_reader :input

  INPUT_FILEPATH = File.expand_path('day1/input.txt')

  def initialize
    @input = File.read(INPUT_FILEPATH)
  end

  def count
    input_to_array.count
  end

  private

  def input_to_array
    input.chomp.split('')
  end
end
