class Bishop < Piece
  include SlidingPiece
  
  def symbol
    @color == :W ? "\u2657" : "\u265d"
  end
  
  def move_dirs
    # [[-1, -1], [-1, 1], [1, -1], [1, 1]] 
    SlidingPiece::DIAGONAL_DIRS
  end
  
end