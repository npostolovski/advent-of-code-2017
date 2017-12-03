class Checksum
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def answer
    checksum = matrix.map { |row| row.max - row.min }
    checksum.inject(0) { |sum, memo| sum + memo }
  end

end
