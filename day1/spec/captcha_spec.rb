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

  it "1111 should produce a sum of 4" do
    array2 = [1, 1, 1, 1]
    expected_answer = 4
    captcha = Captcha.new(array2)

    expect(captcha.answer).to eq expected_answer
  end

  it "1234 should produce 0 because no digit matches" do
    array3 = [1, 2, 3, 4]
    expected_answer = 0
    captcha = Captcha.new(array3)

    expect(captcha.answer).to eq expected_answer
  end

  it "91212129 produces 9 because the only digit that matches is last" do
    array4 = [9, 1, 2, 1, 2, 1, 2, 9]
    expected_answer = 9
    captcha = Captcha.new(array4)

    expect(captcha.answer).to eq expected_answer
  end
end
