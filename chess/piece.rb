require_relative "slideable.rb"
require "byebug"

class Piece
    include Slideable

    attr_reader :symbol, :color

    def initialize(color)
        @color = color
        @symbol = :piece
    end

    def valid_moves(current_board, position)
        moves = []
        (0..7).each do |row|            
            (0..7).each do |col| 
                if current_board[[row,col]].color != self.color
                    moves << [row,col] 
                end
            end
        end
        horizontal_moves(moves, position, current_board)
    end

    def inspect
        @symbol.inspect
    end
end