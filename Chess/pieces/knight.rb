class Knight < Piece
  
  def symbol
    @color == :W ? "\u2658" : "\u265e"
  end
  
  def move_diffs
    [[-2, -1], [-2, 1], [2, -1], [2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2]]
  end
  
end