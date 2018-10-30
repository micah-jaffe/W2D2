class Queen < Piece 
  include SlidingPiece
  
  def symbol
    @color == :W ? "\u2655" : "\u265b"
  end
  
  def move_dirs
    SlidingPiece::DIAGONAL_DIRS + SlidingPiece::HORIZONTAL_DIRS
  end
  
end