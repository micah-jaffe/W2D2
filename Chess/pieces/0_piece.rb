class Piece
  attr_reader :color, :pos, :board
  attr_writer :board
  
  def initialize(color = nil, board = nil, pos = nil)
    @color = color
    @board = board
    @pos = pos
    # @selected = false : if piece is selected to move, highlight it
  end
  
  def to_s
    symbol.encode('utf-8')
  end
  
  def empty?
    
  end
  
  def valid_moves
    []
  end
  
  def move_into_check?(end_pos)
    
  end
  
  def pos=(val)
    @pos = val
  end
  
  def symbol
    
  end
  
  def move_into_check?(end_pos)
    
  end
  
  def inspect
    symbol.encode('utf-8')
  end
  
  def dup
    self.class.new(self.color, self.board, self.pos)
  end
  
end