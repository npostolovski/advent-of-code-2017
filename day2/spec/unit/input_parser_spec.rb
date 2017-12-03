require_relative '../../lib/input_parser'

describe InputParser do
  let(:input) { InputParser.new }

  it "should return a 16 x 16 matrix" do
    expected_number_of_rows = 16
    expected_number_of_cells = 16

    expect(input.matrix.length).to eq expected_number_of_rows
    expect(input.matrix.first.length).to eq expected_number_of_cells
  end

  it "should return cell values in integer format" do
    a_row = input.matrix.first
    expect(a_row.first.class).to eq Fixnum
  end
end
