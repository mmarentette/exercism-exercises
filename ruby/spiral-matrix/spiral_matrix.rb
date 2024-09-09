class Matrix
  UNFILLED_SQUARE = '*'

  attr_reader :squares

  def initialize(size)
    @squares = Array.new(size) { Array.new(size, UNFILLED_SQUARE) }
  end

  def filled?
    !squares.flatten.include?(UNFILLED_SQUARE)
  end

  def fill(row, col, value)
    squares[row][col] = value
  end

  def square_unfilled?(row, col)
    fetch(row, col) == UNFILLED_SQUARE
  end

  def fetch(row, col)
    squares.fetch(row, [])[col]
  end
end

class Walker < Struct.new(:matrix, :row, :col, :direction, :count)
  NEXT_SQUARE_DELTAS = {
    east: [0, 1],
    south: [1, 0],
    west: [0, -1],
    north: [-1, 0]
  }
  
  def initialize(matrix)
    super(matrix, 0, 0, [:east, :south, :west, :north], 1)
  end

  def walk
    loop do
      return if matrix.filled?

      matrix.fill(row, col, count)
      return if matrix.filled?

      self.count += 1
      turn_right unless can_walk_to_next_square?
      walk_to_next_square
    end
  end

  private

  def turn_right
    direction.rotate!
  end

  def can_walk_to_next_square?
    matrix.square_unfilled?(*next_square)
  end

  def walk_to_next_square
    next_row, next_col = next_square
    
    self.row = next_row
    self.col = next_col
  end

  def next_square
    row_delta, col_delta = NEXT_SQUARE_DELTAS[direction.first]
    [row + row_delta, col + col_delta]
  end
end

class SpiralMatrix < Struct.new(:size)
  def matrix
    matrix = Matrix.new(size)

    Walker.new(matrix).walk

    matrix.squares
  end
end
