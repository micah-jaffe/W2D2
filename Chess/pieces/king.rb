class King < Piece 
  include SteppingPiece
  
  def symbol
    @color == :W ? "\u2654" : "\u265a"
  end
  
  def move_diffs
    [[-1, -1], [0, -1], [1, -1], [1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0]]
  end
  
end