require "singleton"

class NullPiece < Piece
  include Singleton
  
  def initialize
    @color = nil
  end
  
  def symbol
    :N
  end
  
  def moves
    []
  end
  
end