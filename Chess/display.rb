require_relative "board"
require_relative "cursor"
require "colorize"

class Display
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
    @from_square = nil
    @to_square = nil
  end
  
  def render
    @board.rows.each_with_index do |array, i|
      array.each_with_index do |square, j|
        if [i, j] == @cursor.cursor_pos
          print_square = (@cursor.selected ? square.to_s.red : square.to_s.green)
        else
          print_square = square.to_s
        end
        
        # if [i, j] == @frozen_square
        #   print_square = square.to_s.red 
        # end
        print print_square
      end
      puts
    end
    ""
  end
  
  def cursor_update
    # system("clear")
    loop do
      # if @from_square && @to_square
      #   @board.move_piece(@from_square, @to_square)
      #   @from_square = nil
      #   @to_square = nil
      # end
      
      render
      cursor_pos = @cursor.cursor_pos
      p cursor_pos
      # new_cursor_pos = 
      @cursor.get_input
      
      # if new_cursor_pos == cursor_pos && @from_square.nil? # don't let it select itself
      #   @from_square = cursor_pos 
      #   puts "#{@from_square} HAS BEEN SELECTED"
      # elsif new_cursor_pos == cursor_pos && @from_square
      #   @to_square = cursor_pos
      #   puts "#{@to_square} HAS BEEN SELECTED"
      #   if @from_square == @to_square 
      #     @from_square = nil 
      #     @to_square = nil
      #     puts "BOTH SQUARE WERE THE SAME, AND DESELECTED"
      #   end
      # end
      
      # system("clear")
    end
  end
  
end




if __FILE__ == $0 
  b = Board.new
  
  b.move_piece([6, 5], [5, 5])
  b.move_piece([1, 4], [3, 4])
  b.move_piece([6, 6], [4, 6])
  b.move_piece([0, 3], [4, 7])
  p b.checkmate?(:W)
  d = Display.new(b)
  d.render
  
  p b[[0, 1]].moves
  puts "KNIGHT ABOVE"
  p b[[0, 5]].moves 
  puts "BISHOP ABOVE"
  p b[[6, 5]].pos 
  p b[[5, 5]].moves
  puts "NEW PAWN BELOW"
  p b[[1, 0]].moves
end