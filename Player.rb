class Player

	attr_accessor :name, :xouo, :player_status
	attr_writer :player_status

	#initialise la classe Player avec les bons attributs
	def initialize (name, xouo, player_status)
		@name = name
		@xouo = xouo
		@player_status = player_status
		@player_status ="looser"
	end

end
