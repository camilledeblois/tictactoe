class Board

	attr_accessor :array

	#crée un tableau avec 9 éléments correspondant aux 9 instances de BoardCases
	def initialize
		$array = Array.new
		$a1 = " "
		$a2 = " "
		$a3 = " "
		$b1 = " "
		$b2 = " "
		$b3 = " "
		$c1 = " "
		$b2 = " "
		$c3 = " "
		$array = [$a1, $a2, $a3, $b1, $b2, $b3, $c1, $c2, $c3]
		$hash = {"a1" => $a1, "a2" => $a2, "a3" => $a3, "b1" => $b1, "b2" => $b2, "b3" => $b3, "c1" => $c1, "c2" => $c2, "c3" => $c3}
	end

	#affiche le plateau
	def boarddisplay
		puts "  a b c"
		puts "1 #{$a1}|#{$b1}|#{$c1}"
		puts " --|-|--"
		puts "2 #{$a2}|#{$b2}|#{$c2}"
		puts " --|-|--"
		puts "3 #{$a3}|#{$b3}|#{$c3}"
	end

  #définit les 8 possibilités de victoire
  def victory_possibilities

  	$array[0,3] == ["X","X","X"] || $array[0,3] == ["O","O","O"] ||
  	$array[3,3] == ["X","X","X"] || $array[3,3] == ["O","O","O"] ||
  	$array[6,3] == ["X","X","X"] || $array[6,3] == ["O","O","O"] ||
  	[$array[0],$array[3],$array[6]] == ["X","X","X"] || [$array[0],$array[3],$array[6]] == ["O","O","O"] ||
  	[$array[1],$array[4],$array[7]] == ["X","X","X"] || [$array[1],$array[4],$array[7]] == ["O","O","O"] ||
  	[$array[2],$array[5],$array[8]] == ["X","X","X"] || [$array[2],$array[5],$array[8]] == ["O","O","O"] ||
  	[$array[0],$array[4],$array[8]] == ["X","X","X"] || [$array[0],$array[4],$array[8]] == ["O","O","O"] ||
  	[$array[2],$array[4],$array[6]] == ["X","X","X"] || [$array[2],$array[4],$array[6]] == ["O","O","O"]

  end

end

