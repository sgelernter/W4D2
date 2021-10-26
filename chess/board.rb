require_relative "piece.rb"
require_relative "nullpiece.rb"

class Board
    attr_reader :grid
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        (0..7).each do |row|
            (0..7).each do |col|
                if row < 2 || row > 5
                    @grid[row][col] = Piece.new
                else
                    @grid[row][col] = NullPiece.new
                end
            end
        end
    end
end

b = Board.new
p b.grid.length