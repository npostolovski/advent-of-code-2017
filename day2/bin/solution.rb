require_relative '../lib/input_parser'
require_relative '../lib/checksum'

input = InputParser.new
checksum = Checksum.new(input.matrix)

print checksum.answer
