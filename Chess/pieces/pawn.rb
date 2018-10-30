class Pawn < Piece
  
  def symbol
    @color == :W ? "\u2659" : "\u265f"
  end
  
  def moves
    forward_steps + side_attacks
  end
  
  private
  
  def at_start_row?
    if @color == :B && @pos.first == 1 
      true 
    elsif @color == :W && @pos.first == 6 
      true 
    else 
      false 
    end
  end
  
  def forward_dir
    @color == :B ? 1 : -1
  end
  
  def forward_steps
    if at_start_row? 
      [[forward_dir, 0], [forward_dir*2, 0]]
    else 
      [[forward_dir, 0]] & self.valid_moves
    end
  end
  
  def side_attacks
    attacking_pos = [
      [@pos.first + forward_dir, @pos.last + 1],
      [@pos.first + forward_dir, @pos.last - 1]
    ]
    
    # get overlap between all possible attack position and only those that are on board and different color
    # i.e. pawn can't attack off the board
    attacking_pos = attacking_pos & self.valid_moves
    
    side_moves = []
    
    attacking_pos.each do |attack_pos|
      other_color = @board[attack_pos].color
      if other_color && other_color != @color
        side_moves << attack_pos
      end
    end
    
    side_moves
  end
  
end