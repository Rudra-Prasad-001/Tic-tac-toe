require_relative './board.rb' 
require_relative './player.rb'

class Play

  def initialize

    @board = Board.new
    @players = [Player.new("Player1", "X") , Player.new("player2" , "O")]
    @current_player = @players.first

  end
  
  def play_game 
    loop do
      @board.display
      @current_player.take_turn(@board)
      if @board.winning_combinations?(@current_player.symbol)
        puts "#{@current_player.name} wins!"
        @board.display
        break

        elsif @board.full?
          @board.display
          puts "It's a dwaw!"
         break
    
      end
    
      switch_player
    end
    
  end
  
  def switch_player
    @current_player = @players.rotate!.first
  end

end

tic = Play.new

tic.play_game
