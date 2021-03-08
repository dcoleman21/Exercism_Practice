=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

# row1 = [1, 2]
# row2 = [3, 4]
# row3 = [5, 6]

class Matrix
  attr_reader :rows,
              :columns

  def initialize(data)
    @rows = to_rows(data)
    @columns = to_columns(data)
  end

  def to_rows(data)
    data.split("\n").map do |row|
      row.split(' ').map do |num|
        num.to_i
      end
    end
  end
# matrix.columns = [ [1, 4, 7, 8], [2, 5, 8, 7], [3, 6, 9, 6] ]
# col1 = [1, 4, 7, 8]
# col2 = [2, 5, 8, 7]
# col3 = [3, 6, 9, 6]
  def to_columns(data)
    col_arr = []
    data.split("\n").each do |row|
      row.split(' ').each_with_index do |num, ind|
        if col_arr[ind] == nil
          col_arr << [num.to_i]
        else
          col_arr[ind] << num.to_i
        end
      end
      #col_arr = [[1], [2], [3]]
    end
    col_arr
  end
end
