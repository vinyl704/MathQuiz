#math modules
def addition() #function for addition problems
	puts "\n\n****************\nLet's Begin\n****************\n\n"
	score = 0
	sleep(02)
	
	(1..10).each do |x|
		wrong = 0.0
		card1 = Random.rand(1..100)
		card2 = Random.rand(1..100)
		puts "#{card1} + #{card2} = ?\n"
		user_answer = gets.to_i
		answer = card1 + card2
		if user_answer != answer
			puts "\nThat is incorrect, please select the correct answer\n"
			wrong += 0.5
			while user_answer != answer && wrong < 2	
				user_answer = gets.to_i
				if user_answer != answer
					puts "still wrong\n"
					wrong += 0.5
				else 
					puts "Awesome, That is correct \n#{card1} + #{card2} = #{answer}\n\n"
					score += 1
					sleep(01)
				end
				if wrong == 2
					puts "\nThat is soooo wrong, the answer is: #{answer}\n\n\n" 
					sleep(01)
				end
			end
		else 
			puts "Awesome, That is correct \n#{card1} + #{card2} = #{answer}\n\n"
			score += 1
			sleep(01)
		end
	end
	puts "Your score is #{score}\n\n\n"
	sleep(02)
	replay_menu()
end
def subtraction() #function for subtraction problems
	puts "\n\n****************\nLet's Begin\n****************\n\n"
	score = 0
	sleep(02)
	(1..10).each do |x|
		wrong = 0.0
		card1 = Random.rand(1..100)
		card2 = Random.rand(1..100)
		puts "#{card1} - #{card2} = ?\n"
		user_answer = gets.to_i
		answer = card1 - card2
		if user_answer != answer
			puts "That is incorrect, please select the correct answer\n\n"
			wrong += 0.5
			while user_answer != answer && wrong < 2	
				user_answer = gets.to_i
				if user_answer != answer
					puts "still wrong\n"
					wrong += 0.5
				else 
					puts "Awesome, That is correct \n#{card1} - #{card2} = #{answer}\n\n"
					score += 1
					sleep(01)
				end
				if wrong == 2
					puts "\nThat is soooo wrong, the answer is: #{answer}\n\n\n" 
					sleep(01)
				end
			end
		else 
			puts "Awesome, That is correct \n#{card1} - #{card2} = #{answer}\n\n"
			score += 1
			sleep(01)
		end
	end
	puts "Your score is #{score}\n\n\n"
	sleep(02)
	replay_menu()
end

def multiplication() #function for multiplication
	
	puts "\n\n****************\nLet's Begin\n****************\n\n"
	score = 0
	
	sleep(02)
	(1..10).each do |x|
		wrong = 0.0
		card1 = Random.rand(1..100)
		card2 = Random.rand(1..100)
		puts "#{card1} * #{card2} = ?\n"
		user_answer = gets.to_i
		answer = card1 * card2
		if user_answer != answer
			puts "\nThat is incorrect, please select the correct answer\n\n"
			wrong += 0.5
			while user_answer != answer && wrong < 2	
				user_answer = gets.to_i
				if user_answer != answer
					puts "still wrong\n"
					wrong += 0.5
				else 
					puts "Awesome, That is correct \n\n#{card1} * #{card2} = #{answer}\n\n"
					score += 1
					sleep(01)
				end
				if wrong == 2
					puts "\nThat is soooo wrong, the answer is: #{answer}\n\n\n"  
					sleep(01)
				end
			end
		else 
			puts "\nAwesome, That is correct \n#{card1} * #{card2} = #{answer}\n\n"
			score += 1
			sleep(01)
		end
	end
	puts "\nYour score is #{score}"
	sleep(02)
	replay_menu()
end

def division() #function for division
	puts "\n\n****************\nLet's Begin\n****************\n\n"
	score = 0
	sleep(02)
	(1..10).each do |x|
		wrong = 0.0
		card1 = Random.rand(1..100)
		card2 = Random.rand(1..100)
		#if card2 > card1
		#	card2 = Random.rand(1..10000)
		#end
		
		while card1 % card2 != 0
			card1 = Random.rand(1..100)
			card2 = Random.rand(1..100)
		end
			
		answer = card1 / card2	
		puts "#{card1} / #{card2} = ?\n"
		user_answer = gets.to_f
		
		if user_answer != answer
			puts "That is incorrect, please select the correct answer\n\n"
			wrong += 0.5
			while user_answer != answer && wrong < 2	
				user_answer = gets.to_i
				if user_answer != answer
					puts "still wrong\n"
					wrong += 0.5
				else 
					puts "Awesome, That is correct \n#{card1} / #{card2} = #{answer}\n\n"
					score += 1
					sleep(01)
				end
				if wrong == 2
					puts "\nThat is soooo wrong, the answer is: #{answer}\n\n\n"  
					sleep(01)
				end
			end
		else 
			puts "Awesome, That is correct \n\n#{card1} / #{card2} = #{answer}\n\n"
			score += 1
			sleep(01)
		end
	end
	puts "Your score is #{score}\n\n\n"
	sleep(02)
	replay_menu()
end

def replay_menu() #gives user option to choose another category or quit
	system "clear"
	puts "Do you want to start over? \n(C)hoose another category \n(Q)uit"
	option = gets.chomp.downcase
	if option == "quit" || option == "q"
		puts "\n\nGoodbye"
	elsif option == "c" or option.include?("choose")
		flashcards()
	end
end
	
def flashcards()	#main function that calls math functions
	puts "What you wanna work on today?\n"
	sleep(01)
	puts "Addition, Subtraction, Multiplication, or Division?\n\n"
	
	choice = gets.chomp.downcase #converts user input to all lowercase
	
	if choice == "addition" or choice.include?("add") or choice.start_with?("a") #mitigating bad spelling
		addition()
	elsif choice == "subtraction" or choice.include?("sub") or choice.start_with?("s")
		subtraction()
	elsif choice == "multiplication" or choice.include?("multi") or choice.start_with?("m")
		multiplication()
	elsif choice == "division" or choice.include?("div") or choice.start_with?("d")
		division()
	else 
		puts "Please make a valid selection"
		flashcards()
	end
end

#Starting point
puts "********************\nMath Quiz(v0.0.0.1)\nBy: Vinyl704 \nEST 2020\n********************"
sleep(01)
puts "What is your name?\n "
name = gets.chomp.capitalize #get users name, strip trailing space, 1st letter capital
sleep(02)
puts ".\n..\n..."
puts "Hello #{name}\n\n" 
sleep(1)
puts "Welcome to the Math Quiz\n\n"
sleep(01)
puts "Yaaay \n\nYoooooo \n\n\nLETS GOOOOOO!!\n\n"
sleep(02)
puts "Okay, Okay \nNo more playing around \n\nWe've got math to do!!!\n\n\n"
sleep(02)



flashcards() #main function call