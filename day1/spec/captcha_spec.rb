require_relative '../captcha'

describe Captcha do
  let(:array) { [1, 2, 3] }

  it "should take an array of digits" do
    captcha = Captcha.new(array)

    expect(captcha.array).to eq array
  end
end
