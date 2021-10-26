# require_relative "piece.rb"

class NullPiece < Piece

    def initialize
        super(:empty)
        @symbol = :null
    end
    
end