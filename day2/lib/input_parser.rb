class InputParser
  attr_reader :input, :matrix

  INPUT_FILEPATH = File.expand_path('./lib/input.txt')

  def initialize
    @input = File.read(INPUT_FILEPATH)
    @matrix ||= input_to_matrix
  end

  private

  def input_to_matrix
    rows = input.split("\n")
    rows.map { |row| row.split("\t").map(&:to_i) }
  end

end
