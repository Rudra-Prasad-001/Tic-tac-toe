
class Board

  attr_accessor :board
  
  def initialize 
  @board = Array.new(9," ")
  end

  def display

    puts "  #{@board[0]}  |  #{@board[1]}  |  #{@board[2]}"
    puts "-----------------"
    puts "  #{@board[3]}  |  #{@board[4]}  |  #{@board[5]}"
    puts "-----------------"
    puts "  #{@board[6]}  |  #{@board[7]}  |  #{@board[8]}"
  
  end
  
  def update_position(symbol,position)

    if valid_move?(position)
      @board[position] = symbol
      return true
      else return false
    end
    

  end

  def valid_move?(position)

    if position.between?(0,8) && @board[position] == " "
      return true
      else return false
    end

  end

  def winning_combinations?(symbol)
    winning_lines = [[0,1,2],[3,4,5],[6,7,8], #Rows
                     [0,3,6],[1,4,7],[2,5,8], #Columns
                     [0,4,8],[2,4,6]          #Diagonals
                    ]
    winning_lines.any? do |line|
      line.all? { |position|  @board[position] == symbol}
    end
  end
  
  def full?
    if @board.include?(" ")
      return false
      else return true
    end

  end
     
  
end