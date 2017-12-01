require_relative '../input_parser'

describe InputParser do
  let(:input) { InputParser.new }

  it "should return an array of all input digits" do
    expected_number_of_digits = 2014

    expect(input.count).to eq expected_number_of_digits
  end

  it "should return digits in integer format" do
    expect(input.array.first.class).to eq Fixnum
  end
end
