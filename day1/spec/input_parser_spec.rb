require_relative '../input_parser'

describe InputParser do
  it "should return an array of all input digits" do
    expected_number_of_digits = 2014
    input = InputParser.new

    expect(input.count).to eq expected_number_of_digits
  end
end
