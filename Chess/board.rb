require "require_all"

require_all 'pieces'
require_all 'modules'

class Board 
  include PiecePositions
  attr_reader :rows
  
  def initialize
    @rows = Array.new(8) { Array.new(8) }
    fill_board
  end
  
  def fill_board
    
    @rows.length.times do |i1|
      @rows.length.times do |i2| 
        
        board_pos = [i1, i2]
        self[board_pos] = PIECE_POSITIONS[board_pos]
        self[board_pos].pos = board_pos
        
        self[board_pos].board = self
      end 
    end
    
  end
  
  def move_piece(start_pos, end_pos)
    
    if self[start_pos].is_a?(NullPiece)
      raise ArgumentError.new("You must select a start position with an existing piece.")
    end
    
    #HAVE TO ADD LOGIC TO MAKING SURE MOVE IS VALID FOR SPECIFIC PIECE
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
  
    #Implement logic for taking a piece 
    #right now it just swaps, and doesn't take anything off the board
  end
  
  def [](pos)
    x, y = pos
    @rows[x][y]
  end
  
  def []=(pos, val)
    x, y = pos
    @rows[x][y] = val
  end
  
  def valid_pos?(pos)
    pos.none? { |el| el < 0 || el > 7 }
  end
  
  def checkmate?(color)
    all_our_moves = []
    
    @rows.each_with_index do |row, idx|
      row.each_with_index do |square, idx2|
        if square.color == color
          all_our_moves.concat(square.valid_moves)
        end
      end
    end
    
    all_out_moves.all(&:empty?) && in_check?(color) 
    end
  
  def in_check?(color)
    king_pos = []
    all_opposing_moves = []
    
    @rows.each_with_index do |row, idx|
      row.each_with_index do |square, idx2|
        
        if square.is_a?(King) && square.color == color
          king_pos.concat([idx, idx2])
        end
        
        if square.color && square.color != color
          all_opposing_moves.concat(square.moves)
        end
        
      end
    end
    
    all_opposing_moves.include?(king_pos)
  end
  
  def valid_moves 
    
    total_moves = []
    @rows.length.times do |i1|
      @rows.length.times do |i2| 
        total_moves << [i1, i2]
      end 
    end
    
    total_moves
  end
    
end

