require_relative '../captcha'

describe Captcha do
  let(:array) { [1, 2, 3] }

  it "should take an array of digits" do
    captcha = Captcha.new(array)

    expect(captcha.array).to eq array
  end

  it "1122 should produce a sum of 3" do
    array1 = [1, 1, 2, 2]
    expected_answer = 3
    captcha = Captcha.new(array1)

    expect(captcha.answer).to eq expected_answer
  end
end
