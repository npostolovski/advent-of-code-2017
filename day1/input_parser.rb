class InputParser
  attr_reader :input, :array

  INPUT_FILEPATH = File.expand_path('day1/input.txt')

  def initialize
    @input = File.read(INPUT_FILEPATH)
    @array ||= input_to_array
  end

  def count
    input_to_array.count
  end

  private

  def input_to_array
    input.chomp.split('').map(&:to_i)
  end
end
