class Piece

    attr_reader :symbol

    def initialize
        @symbol = :piece
    end

    def valid_moves
        moves = []
        (0..7).each do |row|            
            (0..7).each {|col| moves << [row,col] }
        end
        moves
    end

    def inspect
        @symbol.inspect
    end
end