require "require_all"
require_rel '../pieces'

module PiecePositions
  PIECE_POSITIONS = {
    [0, 0] => Rook.new(:B, self),
    [0, 1] => Knight.new(:B, self),
    [0, 2] => Bishop.new(:B, self),
    [0, 3] => Queen.new(:B, self),
    [0, 4] => King.new(:B, self),
    [0, 5] => Bishop.new(:B, self),
    [0, 6] => Knight.new(:B, self),
    [0, 7] => Rook.new(:B, self),
    [1, 0] => Pawn.new(:B, self),
    [1, 1] => Pawn.new(:B, self),
    [1, 2] => Pawn.new(:B, self),
    [1, 3] => Pawn.new(:B, self),
    [1, 4] => Pawn.new(:B, self),
    [1, 5] => Pawn.new(:B, self),
    [1, 6] => Pawn.new(:B, self),
    [1, 7] => Pawn.new(:B, self),
  
    [6, 0] => Pawn.new(:W, self),
    [6, 1] => Pawn.new(:W, self),
    [6, 2] => Pawn.new(:W, self),
    [6, 3] => Pawn.new(:W, self),
    [6, 4] => Pawn.new(:W, self),
    [6, 5] => Pawn.new(:W, self),
    [6, 6] => Pawn.new(:W, self),
    [6, 7] => Pawn.new(:W, self),
    [7, 0] => Rook.new(:W, self),
    [7, 1] => Knight.new(:W, self),
    [7, 2] => Bishop.new(:W, self),
    [7, 3] => Queen.new(:W, self),
    [7, 4] => King.new(:W, self),
    [7, 5] => Bishop.new(:W, self),
    [7, 6] => Knight.new(:W, self),
    [7, 7] => Rook.new(:W, self)  
  }
  
  PIECE_POSITIONS.default = NullPiece.instance

end