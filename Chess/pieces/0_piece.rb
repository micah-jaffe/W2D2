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
    next_moves = []
    piece_moves = moves
    piece_moves.each do |move|
      next_moves << move unless move_into_check?(move)
    end
    
    next_moves
  end
  
  def move_into_check?(end_pos)
    duped = @board.dup
    duped.move_piece(@pos, end_pos)
    duped.in_check?
  end
  
  def pos=(val)
    @pos = val
  end
  
  def symbol
    
  end
  
  def inspect
    symbol.encode('utf-8')
  end
  
  def dup
    self.class.new(self.color, self.board, self.pos)
  end
  
end