require_relative '../../lib/digit_matcher'

describe DigitMatcher do
  context '#it_is_the_last_digit_in_array' do
    let(:array) { [1, 2, 1] }

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
end
