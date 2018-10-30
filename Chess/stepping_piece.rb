module SteppingPiece
  
  def moves
    pos = [5, 4] #HOW DO WE FIND POS INSIDE THE MODULE?
    possible_moves = []
    move_diffs.each do |diff|
      move = []
      diff.each_index do |i|
        move << diff[i] + pos[i]
      end
      possible_moves << move
    end
    
    possible_moves
  end
  
  # private 
  
  def move_diffs
    king_diffs = [[-1, -1], [0, -1], [1, -1], [1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0]]
    #returns an array of possible differentials
  end
  
end