
class Game

def enter_game
	Directions.new.get_direction
end
end

class Directions

	def get_direction
		puts "You are in the game. Where do you want to go? N, S, E, W?", exits
	    direction = gets.chomp
	if direction == "N"
		Directions.new.direction_N
	elsif direction == "S"
		Directions.new.direction_S
	elsif direction == "E"
		Directions.new.direction_E
	elsif direction == "W"
        Directions.new.direction_E
	end
    end

    def exits
    	d_exit = ["Exits: N", "Exits:S", "Exits:E", "Exits:W"].sample
	end

	def direction_N
		darkroom = DarkRoom.new
		d_room = "You have entered the dark room, good luck !"
		puts d_room
        puts darkroom.enter_room
    end
    def direction_S
    	whiteroom = WhiteRoom.new
		w_room = "You are now entering the white room, I hope you will live to see tomorrow !"
		puts w_room
		puts whiteroom.enter_room
	end
	def direction_E
		blueroom = BlueRoom.new
		b_room = "You are now entering the blue room, things are going to be blue for a while !"	
		puts b_room
		puts blueroom.enter_room
	end
	def direction_W
		puts "You are out of the game idiot"			
	end
end


class DarkRoom

	def enter_room
			puts "Now you're in the whiteroom"
			puts 
			direction = gets.chomp
			if direction == "N"
			Directions.new.direction_N
		    elsif direction == "S"
		    Directions.new.direction_S
		    elsif direction == "E"
		    Directions.new.direction_E	
		    elsif direction == "W"
		    puts "There is not exit here, try a different direction stupid."
		    		   			   			   			   
		end
		end
end



class WhiteRoom

    def enter_room
            puts "Ok, now you're in the whiteroom. You can see a sword."
            puts "Pick up sword? Yes/No"
            pick_answer = gets.chomp
            if pick_answer == "Yes"
            puts Inventory.new.pick("sword")
            puts "was picked"
            else 
            puts "Where do you want to go next?" 
            end
            direction = gets.chomp
            if direction == "N"
	        Directions.new.direction_N
		    elsif direction == "S"
		    Directions.new.direction_S
		    elsif direction == "E"
		    puts "There is not exit here, try a different direction stupid."	
		    elsif direction == "W"
		    puts "There is not exit here, try a different direction stupid."
    end
end
end


class BlueRoom

    def enter_room
    	    puts "Ok, now you're in the blueroom, what's your next step?"
            puts "Drop sword? Yes/No"
            drop_answer = gets.chomp
            if drop_answer === "Yes"
            puts Inventory.new.drop("sword")
            puts "was droped"
            else 
            puts "Where do you want to go next?" 
            end
    	    direction = gets.chomp
            if direction == "N"
	        Directions.new.direction_N
		    elsif direction == "S"
		    Directions.new.direction_S
		    elsif direction == "E"
		    puts "There is not exit here, try a different direction stupid."	
		    elsif direction == "W"
		    puts "There is not exit here, try a different direction stupid."
    end
    end
end



class YellowRoom

    def enter_room
    	    puts "Ok, now you're in the yellowroom, what's your next step?"
    	    direction = gets.chomp
            if direction == "N"
	        Directions.new.direction_N
		    elsif direction == "S"
		    Directions.new.direction_S
		    elsif direction == "E"
		    puts "There is not exit here, try a different direction stupid."	
		    elsif direction == "W"
		    puts "There is not exit here, try a different direction stupid."
    end    
end
end



class RedRoom
    
    def enter_room
    	puts "You made it so far, you are in the redroom now, what's your next step?"
    	direction = gets.chomp
            if direction == "N"
	        Directions.new.direction_N
		    elsif direction == "S"
		    Directions.new.direction_S
		    elsif direction == "E"
		    puts "There is not exit here, try a different direction stupid."	
		    elsif direction == "W"
		    puts "There is not exit here, try a different direction stupid."
         end
end
end


class Inventory
    attr_accessor :weapons

    def initialize
     @weapons = []
    end
	def pick(weapons)
		@weapons << weapons
    end 

    def drop(weapons)
    	@weapons.delete("sword")
    end
end

class Commands

	def look_for_food
		random = Random.rand(1...3)
		if random == 1
		darkroom = DarkRoom.new
	    d_room = "You are entering the DarkRoom." 
	    puts d_room
	    puts darkroom.enter_room
	    elsif random == 2
	    blueroom = BlueRoom.new
		b_room = "You are now entering the BlueRoom."
		puts b_room
		puts blueroom.enter_room
	    elsif random == 3
	    yellowroom = YellowRoom.new
		y_room = "You are now entering the YellowRoom."
		puts y_room
		puts yellowroom.enter_room		
	    	
    end
 end	
end

enter_game = Game.new
enter_game.enter_game
#command = Commands.new
#command.look_for_food