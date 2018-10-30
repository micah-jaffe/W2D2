require "singleton"

class NullPiece < Piece
  include Singleton
  
  def initialize
    @color = nil
  end
  
  def symbol
    "\u25a2"
  end
  
  def moves
    []
  end
  
end