require_relative "../modules/stepping_piece.rb"

class Knight < Piece
  include SteppingPiece
    
  def symbol
    @color == :W ? "\u2658" : "\u265e"
  end
  
  def move_diffs
    [[-2, -1], [-2, 1], [2, -1], [2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2]]
  end
  
end