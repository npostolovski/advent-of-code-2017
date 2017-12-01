require_relative '../../lib/digit_matcher'

describe DigitMatcher do
  let(:array) { [1, 2, 1] }

  context '#it_is_the_last_digit_in_array' do
    it 'is true when the index is the last element' do
      index_of_last_element = 2
      digit_matcher = DigitMatcher.new(array, index_of_last_element)

      expect(digit_matcher.it_is_the_last_digit_in_array).to eq true
    end

    it 'is false when the index is not the last element' do
      index_of_first_element = 0
      digit_matcher = DigitMatcher.new(array, index_of_first_element)

      expect(digit_matcher.it_is_the_last_digit_in_array).to eq false
    end
  end

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
end
