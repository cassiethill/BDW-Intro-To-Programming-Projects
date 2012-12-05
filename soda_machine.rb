#Program that models a soda machine.
#Accept user input to add or dispense sodas, and display the current stock levels of various sodas in the machine 
#Use gets.chomp to get user data

soda_machine = [
	{:name => 'coke', :qty => 5},
	{:name => 'fanta', :qty => 8},
	{:name => 'sprite', :qty =>3},
	{:name => 'diet_coke', :qty => 6}
]

def machine (sodas)
	a = 0
	while a >= 0
		puts "If you would like to order a soda, type 'order'. If you would like to reload the machine, type 'reload':"
		user_input = gets.chomp

		if user_input == "reload"
			puts "Great, more beverages! What would you like to add?"
				n = 0
				while n < 4
					puts "#{sodas[n][:name]}"
					n += 1
				end

			add = gets.chomp
			puts "Great, how much #{add} would you like to add?"
			amount = gets.chomp.to_i 
				if add == "coke"
					sodas[0][:qty] = sodas[0][:qty] + amount
					puts "Thank you! There are now #{sodas[0][:qty]} #{sodas[0][:name]}s left."	

				elsif add == "fanta"
					sodas[1][:qty] = sodas[1][:qty] + amount
					puts "Thank you! There are now #{sodas[1][:qty]} #{sodas[1][:name]}s left."

				elsif add == "sprite"
					sodas[2][:qty] = sodas[2][:qty] + amount
					puts "Thank you! There are now #{sodas[2][:qty]} #{sodas[2][:name]}s left."
				
				elsif add == "diet_coke"
					sodas[3][:qty] = sodas[3][:qty] + amount
					puts "Thank you! There are now #{sodas[3][:qty]} #{sodas[3][:name]}s left."
				
				end	


		elsif user_input == "order"
			puts "Currently, the following sodas are available. Which would you like?" 
				n = 0
				while n < 4
					if
						sodas[n][:qty] > 0
						puts "#{sodas[n][:name]}"
					end
					n += 1
				end

				choice = gets.chomp
				puts "Great, here's your #{choice}." 
				if choice == "coke"
					sodas[0][:qty] = sodas[0][:qty] - 1
					puts "There are #{sodas[0][:qty]} left."

				elsif choice == "fanta"
					sodas[1][:qty] = sodas[1][:qty] - 1
					puts "There are #{sodas[1][:qty]} left."

				elsif choice == "sprite"
					sodas[2][:qty] = sodas[2][:qty] - 1
					puts "There are #{sodas[2][:qty]} left."
				
				elsif choice == "diet_coke"
					sodas[3][:qty] = sodas[3][:qty] - 1
					puts "There are #{sodas[3][:qty]} left."

				else
					puts "I'm sorry, that's not available in this machine."

				end	


		else
			puts "I'm sorry, I didn't understand that."
		end
		a += 1
	end
end

machine(soda_machine)	