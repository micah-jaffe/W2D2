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
    # moves on the board that don't have our own color in it
    our_pieces = []
    @board.rows.each do |row|
      our_pieces.concat(row.select { |square| square.color == @color })
    end
    
    @board.valid_moves - our_pieces
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
  
end