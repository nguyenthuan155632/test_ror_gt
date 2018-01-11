#!/usr/bin/env ruby

class Question_2
  def rotate_matrix size, matrix
    matrix_rotated = Array.new(size){Array.new(size, 0)}
    for i in 0..(size - 1)
      for j in 0..(size - 1)
        # matrix_rotated[i][j] = matrix[size - j - 1][i];   # rotate right
        matrix_rotated[i][j] = matrix[j][size - i - 1]    # rotate left
      end
    end
    matrix_rotated
  end
end