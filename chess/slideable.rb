
module Slideable
    HORIZONTAL_DIRS = [[0,1], [0,-1], [1,0], [-1,0]]
    DIAGONAL_DIRS = [[1,1], [1,-1], [-1, 1], [-1,-1]]

    def moves

    end

    def horizontal_moves(moves, position, board)
        h_moves = []
        # debugger
        HORIZONTAL_DIRS.each do |step|
            comp_position = add_arrays(position.dup, step)
            until !moves.include?(comp_position) 
                if !board[comp_position].instance_of?(NullPiece)
                    h_moves << comp_position
                    break
                end
                h_moves << comp_position
                comp_position = add_arrays(comp_position, step)
            end
        end
        h_moves
    end

    def add_arrays(arr1, arr2)
        sum_arr = arr1.dup
        arr2.each_with_index {|el,i| sum_arr[i] += el}
        sum_arr
    end

end