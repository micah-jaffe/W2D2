require_relative "piece"

class Board 
  attr_reader :rows
  
  def initialize
    @rows = Array.new(8) { Array.new(8) }
    
    @rows.length.times do |i1|
      @rows.length.times do |i2| 
        if [0, 1, 6, 7].include?(i1) 
          pos = [i1, i2]
          self[pos] = Piece.new(nil, nil, nil)
        end
      end 
    end
    
  end
  
  def move_piece(start_pos, end_pos)
    if self[start_pos].nil?
      raise ArgumentError.new("You must select a start position with an existing piece.")
    end
    
    if end_pos.any? { |el| el < 0 || el > 7 } 
      raise ArgumentError.new("You must select an end position on the board.")
    end
    
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
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
  
end

