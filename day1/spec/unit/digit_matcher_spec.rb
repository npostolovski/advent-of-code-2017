require_relative '../../lib/digit_matcher'

describe DigitMatcher do
  context '#it_is_the_last_digit_in_array' do
    it 'is true when the index is the last element' do
      array = [1, 2, 1]
      i = 2

      digit_matcher = DigitMatcher.new(array, i)

      expect(digit_matcher.it_is_the_last_digit_in_array).to eq true
    end
  end
end
