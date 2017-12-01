require_relative '../../lib/input_parser'
require_relative '../../lib/captcha'

describe Captcha do
  it "returns the correct answer for the given input" do
    correct_answer = 1158
    input = InputParser.new
    captcha = Captcha.new(input.array)

    expect(captcha.answer).to eq correct_answer
  end
end
