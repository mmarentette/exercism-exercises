# input = "1 2 3\n10 20 30\n100 200 300"

class Matrix
  attr_reader :rows

  def initialize(input)
    @rows = input
      .split("\n")
      .map(&:split)
      .map { |array| array.map(&:to_i) }
  end

  def row(index)
    rows[index - 1]
  end

  def column(index)
    columns[index - 1]
  end

  def columns
    rows.first.size.times.map do |c|
      rows.size.times.map do |r|
        rows[r][c]
      end
    end
  end
end

# output = [
#   [1, 10, 100],
#   [2, 20, 200],
#   [3, 30, 300]
# ]