require_relative 'board'
class Player
  attr_accessor :name , :symbol

  def initialize(name,symbol)

    @name = name
    @symbol = symbol

  end

  def take_turn(board)
    loop do
      puts "#{@name} selects #{@symbol}, please choose a position 1-9"
      position = gets.chomp.to_i - 1
      if board.update_position(symbol,position)
        break
      end

      puts "You chose a wrong position, please try again!"
  
    end
    
  end
end