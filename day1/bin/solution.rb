require_relative '../lib/input_parser'
require_relative '../lib/captcha'

input = InputParser.new
captcha = Captcha.new(input.array)

print captcha.answer
