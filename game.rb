
class Game

def enter_game
	puts "You are in the game. Where do you want to go? N, S, E, W?"
	direction = gets.chomp
	if direction == "N"
		darkroom = DarkRoom.new
		d_room = "You have entered the dark room, good luck !"
		puts d_room
        puts darkroom.enter_room 
	elsif direction == "S"
		whiteroom = WhiteRoom.new
		w_room = "You are now entering the white room, I hope you will live to see tomorrow !"
		puts w_room
		puts whiteroom.enter_room
	elsif direction == "E"
		blueroom = BlueRoom.new
		b_room = "You are now entering the blue room, things are going to be blue for a while !"	
		puts b_room
		puts blueroom.enter_room
	elsif direction == "W"
		puts "You are out of the game idiot"			
	end
end
end



class DarkRoom

	def enter_room
			puts "What's next?"
			direction = gets.chomp
			if direction == "N"
			whiteroom = WhiteRoom.new
			w_room = "You are entering the WhiteRoom." 
			puts w_room
			puts whiteroom.enter_room
		    elsif direction == "S"
		    blueroom = BlueRoom.new
		    b_room = "You are now entering the BlueRoom."
		    puts b_room
		    puts blueroom.enter_room
		    elsif direction == "E"
		    puts "There is not exit here, try a different direction stupid."	
		    elsif direction == "W"
		    puts "There is not exit here, try a different direction stupid."
		    		   			   			   			   
		end
		end
end



class WhiteRoom

    def enter_room
            puts "Ok, now you're in the whiteroom, what direction do you want to go?"
            direction = gets.chomp
            if direction == "N"
	        blueroom = BlueRoom.new
	        b_room = "You are entering the BlueRoom." 
			puts b_room
			puts blueroom.enter_room
		    elsif direction == "S"
		    yellowroom = YellowRoom.new
		    y_room = "You are now entering the YellowRoom."
		    puts y_room
		    puts yellowroom.enter_room
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
    	    direction = gets.chomp
            if direction == "N"
	        darkroom = DarkRoom.new
	        d_room = "You are entering the DarkRoom." 
			puts d_room
			puts darkroom.enter_room
		    elsif direction == "S"
		    whiteroom = WhiteRoom.new
		    w_room = "You are now entering the WhiteRoom."
		    puts w_room
		    puts whiteroom.enter_room
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
	        redroom = RedRoom.new
	        r_room = "You are entering the RedRoom." 
			puts r_room
			puts redroom.enter_room
		    elsif direction == "S"
		    blueroom = BlueRoom.new
		    b_room = "You are now entering the BlueRoom."
		    puts b_room
		    puts blueroom.enter_room
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
	        darkroom = DarkRoom.new
	        d_room = "You are entering the DarkRoom." 
			puts d_room
			puts darkroom.enter_room
		    elsif direction == "S"
		    yellowroom = YellowRoom.new
		    y_room = "You are now entering the BlueRoom."
		    puts y_room
		    puts yellowroom.enter_room
		    elsif direction == "E"
		    puts "There is not exit here, try a different direction stupid."	
		    elsif direction == "W"
		    puts "There is not exit here, try a different direction stupid."
         end
end
end


enter_game = Game.new
enter_game.enter_game