module SteppingPiece
  
  def moves
    pos = self.pos 
    possible_moves = []
    move_diffs.each do |diff|
      move = []
      diff.each_index do |i|
        move << diff[i] + pos[i]
      end
      
      if board.valid_pos?(move) && board[move].color != self.color
        possible_moves << move
      end
    end
    
    possible_moves
  end
  
  private 
  
  def move_diffs
    self.move_diffs
  end
end