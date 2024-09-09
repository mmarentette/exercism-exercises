class Grid
  def self.saddle_points(input)
    # result = []
    
    # (0...input.size).each do | row |
    #   p column_index_largest_tree_in_row = input[row].index(input[row].max)

    #   smallest_num_in_column = input[0][column_index_largest_tree_in_row]

    #   (1...input.size).each do | r |
    #     input[r][column_index_largest_tree_in_row]
    #     if input[r][column_index_largest_tree_in_row] < smallest_num_in_column
    #       smallest_num_in_column = input[r][column_index_largest_tree_in_row]
    #     end
    #   end

    #   p smallest_num_in_column

    #   if smallest_num_in_column == input[row, column_index_largest_tree_in_row]
    #     result << { "row" => row + 1, "column" => column_index_largest_tree_in_row + 1 }
    #   end
    # end

    # result

    p input[0].index(input[0].max)
  end
end
