class Piece
  attr_reader :color, :pos, :board
  
  def initialize(color = nil, board = nil, pos = nil)
    @color = color
    @board = board 
    @pos = pos
  end
  
  def to_s
    "\u2654".encode('utf-8')
  end
  
  def empty?
    
  end
  
  def valid_moves
    
  end
  
  def pos=(val)
    
  end
  
  def symbol
    
  end
  
  def move_into_check?(end_pos)
    
  end
  
end