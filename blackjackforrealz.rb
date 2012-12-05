class Deck
	attr_accessor :card, :card1, :card2

	def initialize
		@card1 = card1
		@card2 = card2
	end

	def deal
		@card1 = 1 + rand(13)
		return 11 if @card1 == 1
		return 10 if @card1 >= 10
		@card1
		@card2 = 1 + rand(13)
		return 11 if @card2 == 1
		return 10 if @card2 >= 10
		@card2
		return @card1 + @card2
	end

	def get_card
		@card = 1 + rand(13)
		return 11 if @card == 1
		return 10 if @card >= 10
		return @card		
	end
end


class Player
	attr_accessor :player_hand
	def initialize (player_hand)
		@player_hand = player_hand
	end

	def player_hand_method 
		loop do
			puts "Would you like to 'hit' or 'stay'?"
			response = gets.chomp
			if response == "hit"
				newcard=Deck.new
				@player_hand = @player_hand + newcard.get_card
				puts "Your new total is #{player_hand}."
				if @player_hand >= 21
					break
				elsif @player_hand > 21
					break
                end
			elsif response == "stay"
				break
			end
		end
		return @player_hand	
	end
end


class Dealer
	attr_accessor :dealer_hand
	def initialize (dealer_hand)
		@dealer_hand = dealer_hand
	end

	def dealer_hand_method 
		puts "It's the dealer turn now."
        sleep 2
		loop do
			if @dealer_hand < 17 
				newcard=Deck.new
				@dealer_hand = @dealer_hand + newcard.get_card
			else
				break
			end
		end
		return @dealer_hand
	end
	
end


class Winner
	attr_accessor :player_hand, :dealer_hand
	def initialize (player_hand, dealer_hand)
		@player_hand = player_hand
		@dealer_hand = dealer_hand
	end

	def blackjack?
		if @player_hand == 21
			puts "Blackjack, you win!"
            return true
		end
	end

	def champion
		if @player_hand == 21
			puts "Blackjack you win!"
		elsif @player_hand > 21
			puts "Your total hand was more than 21 points. You busted. Sorry!"
		elsif @player_hand > @dealer_hand
			puts "You beat the dealer, you win!"
		else @player_hand < @dealer_hand
			puts "The dealer's hand beat yours, you lose, sorry!"
		end	
	end
end

class Game
	def self.start
      Game.new.start
	end

	def start
		loop do puts "Hi, welcome to my Blackjack table!"
		    loop do puts "Let's start a new game."
		    	puts 
		        sleep 2
		    	player_hand=Deck.new
		    	puts "Your hand total: #{player_hand.deal}"
		        sleep 2
		    	dealer_hand=Deck.new
		    	puts "Dealer's flipped card: #{dealer_hand.get_card}"
		    	sleep 2
		    	win_check = Winner.new(player_hand.deal, 0)
		    	blackjack = win_check.blackjack?
		        if blackjack == true
		            break
		        end

		    	player=Player.new(player_hand.deal)
		    	final_player_hand = player.player_hand_method
		    	
		    	win_check = Winner.new(final_player_hand, 0)
		    	blackjack = win_check.blackjack?
		        if blackjack == true
		            break
		        elsif final_player_hand <= 21
		    		dealer=Dealer.new(dealer_hand.get_card)
		    		final_dealer_hand = dealer.dealer_hand_method
		    	end
		        sleep 2
		    	declare_winner=Winner.new(final_player_hand, final_dealer_hand)
		    	declare_winner.champion
		    end

		    sleep 5
		end
	end
end

Game.start

