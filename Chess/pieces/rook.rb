class Rook < Piece 
  include SlidingPiece
  
  def symbol
    @color == :W ? "\u2656" : "\u265c"
  end
  
  def move_dirs
    # [[0, -1], [0, 1], [1, 0], [-1, 0]] 
    SlidingPiece::HORIZONTAL_DIRS
  end
  
end