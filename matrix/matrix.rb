=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
    def initialize(s)
        @matrix = []
        rows_string = s.split("\n")
        rows_string.each do |row|
            final_row = row.split(" ").map {|ele| ele.to_i }
            @matrix << final_row
        end
    end

    def rows
        @matrix
    end

    def columns
        columns = []
        (0...@matrix.length).each do |i|
            column = []
            @matrix.each do |row|
                column << row[i]
            end
            columns << column
        end
        columns
    end
end

