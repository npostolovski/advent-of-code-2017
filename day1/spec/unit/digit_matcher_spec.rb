require_relative '../../lib/digit_matcher'

describe DigitMatcher do
  let(:array) { [1, 2, 1] }

  context "#last_digit_matches_first" do
    it 'is true when the last digit of the array matches the first digit' do
      index_of_last_element = 2
      digit_matcher = DigitMatcher.new(array, index_of_last_element)

      expect(digit_matcher.last_digit_matches_first).to eq true
    end

    it 'is false when the last digit does not match the first' do
      array_where_last_does_not_match = [1, 2, 3]
      index_of_last_element = 2
      digit_matcher = DigitMatcher.new(array_where_last_does_not_match, index_of_last_element)

      expect(digit_matcher.last_digit_matches_first).to eq false
    end
  end

  context "#digit_matches_next" do
    it 'is true when the digit matches the next digit in array' do
      array_where_digits_match = [1, 1, 1]
      index = 0
      digit_matcher = DigitMatcher.new(array_where_digits_match, index)

      expect(digit_matcher.digit_matches_next).to eq true
    end

    it 'is false when the digit matches the next digit in array does not match' do
      array_where_digits_do_not_match = [1, 2, 3]
      index = 0
      digit_matcher = DigitMatcher.new(array_where_digits_do_not_match, index)

      expect(digit_matcher.digit_matches_next).to eq false
    end
  end
end
