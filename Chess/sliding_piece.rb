module SlidingPiece
  
  HORIZONTAL_DIRS = [[0, -1], [0, 1], [1, 0], [-1, 0]]
  DIAGONAL_DIRS = [[-1, -1], [-1, 1], [1, -1], [1, 1]]
  
  def horizontal_dirs
    HORIZONTAL_DIRS
  end
  
  def diagonal_dirs
    DIAGONAL_DIRS
  end
  
  def moves 
    pos = self.pos
    pos = [5, 4] #MAKE SURE TO DELETE
    
    possible_moves = []
    
    move_dirs.each do |vector|
      possible_moves += grow_unblocked_moves_in_dir(vector)
    end
    
    possible_moves
  end
  
  #private
  
  def move_dirs 
    # rook_dirs = [[0, -1], [0, 1], [1, 0], [-1, 0]]
    self.move_dirs
  end
  
  def grow_unblocked_moves_in_dir(vector)
    pos = self.pos.dup
    board = self.board
    moves_for_vector = []
    
    pos.map!.with_index { |el, idx| el + vector[idx] }
    
    while board.valid_pos?(pos) && board[pos].is_a?(NullPiece)
      moves_for_vector << pos
      pos.map!.with_index { |el, idx| el + vector[idx] }
    end
    
    moves_for_vector
  end
  
end