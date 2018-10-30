require_relative "board"
require_relative "cursor"
require "colorize"

class Display
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end
  
  def render
    @board.rows.each_with_index do |array, i|
      array.each_with_index do |square, j|
        if [i, j] == @cursor.cursor_pos
          print (@cursor.selected ? square.to_s.cyan : square.to_s.magenta)
        else
          print square.to_s
        end
      end
      puts
    end
    ""
  end
  
  def test_cursor
    system("clear")
    loop do
      render
      p @cursor.cursor_pos
      @cursor.get_input
      system("clear")
    end
  end
  
end