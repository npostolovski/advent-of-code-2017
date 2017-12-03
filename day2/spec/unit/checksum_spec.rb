require_relative '../../lib/checksum'

describe Checksum do
  let(:matrix) { [ [1, 2], [2, 3], [3, 4] ] }

  it "should take a matrix" do
    checksum = Checksum.new(matrix)

    expect(checksum.matrix).to eq matrix
  end

  it "the example checksum should be 3" do
    expected_answer = 3
    checksum = Checksum.new(matrix)

    expect(checksum.answer).to eq expected_answer
  end

  it "the checksum of the next example should be 16" do
    expected_answer = 16
    matrix = [ [5, 10], [7, 3], [8, 1] ]

    checksum = Checksum.new(matrix)

    expect(checksum.answer).to eq expected_answer
  end
end
