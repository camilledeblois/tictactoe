require_relative 'Board' #associe le fichier Board.rb avec Game.rb
require_relative 'BoardCase' #associe le fichier BoardCase.rb avec Game.rb
require_relative 'Player' #associe le fichier player.rb avec Game.rb


class Game

	#lance une nouvelle partie
	def go

		#création et initialisation du joueur1, il va jouer pour les X
		puts "Welcome to the famous Tic Tac Toe game"
		puts "What is your name player 1 ?"
	  name1 = gets.chomp
	  @player1 = Player.new(name1, "X","looser")
	  puts "Player 1 is #{name1} and use X"

	  #création et initialisation du joueur2, il va jouer pour les O
		puts "What is your name player 2 ?"
	  name2 = gets.chomp
	  @player2 = Player.new(name2, "O","looser")
	  puts "Player 2 is #{name2} and use O"

	  #le premier joueur a jouer est le player1
	  @current_player = @player1

	  #creation et initialisation d'un nouveau plateau
	  @board = Board.new
	  @player_status ="looser"

	  while @player_status=="looser" do turn
	  end

	end

	def turn
		#Affiche le plateau
		@board.boarddisplay

		#Demande au joueur à quel emplacement il veut jouer et place sa marque à l'emplacement désiré
		puts "#{@current_player.name}, where do you want to move ?"
		@casenumber = gets.chomp.to_s
		$hash.each do |casechoisen, location|
    	if @casenumber == casechoisen and @current_player == @player1
    	location.sub!(" ","X")
     	elsif @casenumber == casechoisen and @current_player == @player2
        location.sub!(" ","O")
 	  	end
  	end

		#Vérifie si un joueur a gagné et sinon passe au joueur suivant
		if @board.victory_possibilities
    puts "#{@current_player.name} won, end of this game !"
    @player_status="winner"
    play_again
  	else change_player
  	@player_status="looser"
  	end

  end

  #Passe au joueur suivant si la partie n'est pas finie
  def change_player
		if @current_player == @player1
        @current_player = @player2
    else @current_player = @player1
    end
  end

  #Propose de rejouer si la partie est finie
	def play_again
	 	puts "Do you want to play again ? yes or no ?"
	 	answer = gets.chomp
	 		if answer == "yes"
	 		puts "Here we go again"
	 		Game.new.go
	 	  else puts "That is OK, we can stop playing"
	 		end
	end

end

Game.new.go


