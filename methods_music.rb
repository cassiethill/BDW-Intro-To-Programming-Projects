# Music Listening example for intro to programming class

# method without variables
def wake_up
	"Good Morning, let's jam out today."
end

# methods with variables
def side_of_bed (side_of_bed = "wrong")
	"Today you woke up on the #{side_of_bed} side of bed."
end

def morning_prep (time_to_get_ready, wrong_side)
	time_to_get_ready * wrong_side
end

def morning_jam (time_to_get_ready, time_to_blowdry, time_to_shower)
	time_to_get_ready - (time_to_blowdry + time_to_shower)
end

def travel_time (miles, speed_limit)
	(miles / speed_limit).to_f.round(0)
end

def homework_time (average_hmwk_time)
	#Hash
	schedule = {:intro_to_programming => 3, :front_end_dev => 3, :creative_code => 2, :content_strategy => 1, :ucd => 1, :design_thinking => 2}
	todays_courses = schedule.values
	todays_courses = todays_courses.shuffle
	todays_courses = todays_courses.slice(0..1)
	todays_courses = todays_courses.inject(:+)
	return todays_courses * average_hmwk_time
end

def total_minutes (time_to_get_ready, time_to_blowdry, time_to_shower, miles, speed_limit, average_hmwk_time)
	morning_jam(time_to_get_ready, time_to_blowdry, time_to_shower) + travel_time(miles, speed_limit) + homework_time(average_hmwk_time)	
end

#Boolean time
def rockstar? (total_minutes, rockstar_quality = 200)
	total_minutes > rockstar_quality
end

def music_style 
	music_genres = ['rock', 'punk', 'rap', 'pop', 'funk', 'classic', 'jazz']
 	music_genres = music_genres.shuffle
 	music_genres = music_genres.slice(2..4)
	 music_genres.join(" & ")
end


#Variables
time_to_get_ready 	= 45 #minutes
wrong_side			= 1.25 #Move 25% slower - so takes 25% more minutes
rignt_side			= 1 #Move at normal speed
time_to_shower		= 10 #minutes
time_to_blowdry		= 7 #minutes
miles				= 36 #miles
speed_limit			= 0.833 #50mph/60minutes
average_hmwk_time	= 45 #minutes


#Now time to puts
puts wake_up

puts side_of_bed

puts "Your morning preparations took #{morning_prep(time_to_get_ready, wrong_side)} minutes."

puts "Minus shower & blow-dryer time, you got #{morning_jam(time_to_get_ready, time_to_shower, time_to_blowdry)} minutes of morning jam time."

puts "Of course you'll rock out while in transit, and today's travel time affords you #{travel_time(miles, speed_limit)} minutes of additional jam time. Lucky you."

puts "Finally, what else could inspire amazing homework than amazing music? Your efforts today earned you #{homework_time(average_hmwk_time)} minutes of audio bliss."

puts "All in, today, you rocked out for #{total_minutes(time_to_get_ready, time_to_blowdry, time_to_shower, miles, speed_limit, average_hmwk_time)} minutes." 

puts "Does this make you a rockstar? #{rockstar?(total_minutes(time_to_get_ready, time_to_blowdry, time_to_shower, miles, speed_limit, average_hmwk_time))}"

puts "Today, you preferred to listen to #{music_style}"
