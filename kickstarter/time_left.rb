now = Time.now.to_i #integer (not float1)
end_of_year = 1357023599 #Epoch & Unix TIme for 12/31/12 11:59:59 PM
time_remaining = end_of_year - now # in seconds

p "The Assignment: How many months, days, hours, minutes and seconds are left in the year 2012 for humans and dogs?"
p "To solve, we first find that the time remaining for humans in 2012 is #{time_remaining} seconds."

seconds    =  time_remaining % 60
htime_remaining = (time_remaining - seconds) / 60
minutes    =  htime_remaining % 60
h2time_remaining = (htime_remaining - minutes) / 60
hours      =  h2time_remaining % 24
h3time_remaining = (h2time_remaining - hours) / 24
days       =  h3time_remaining % 30.5 #average days per month in remaining months
months     = (h3time_remaining - days) / 30.5

p "Converted, we find that time remaining to humans in 2012 is equal to #{months} months, #{days} days, #{hours} hours, #{minutes} minutes, and #{seconds} seconds."

dtime_remaining = (time_remaining * 7) #dog time remaining is 7 times that of human time

p "Now, dog time is accelerated by 7 from human years, so we find that the time remaining for dogs in 2012 is #{dtime_remaining} seconds."

dseconds    =  dtime_remaining % 60
dtime_remaining = (dtime_remaining - dseconds) / 60
dminutes    =  dtime_remaining % 60
dtime_remaining = (dtime_remaining - dminutes) / 60
dhours      =  dtime_remaining % 24
dtime_remaining = (dtime_remaining - dhours) / 24
ddays       =  dtime_remaining % 30.5 #average days per month in remaining months
dmonths     = (dtime_remaining - ddays) / 30.5

p "We do a similar conversion to find that time remaining for dogs in 2012 is equal to #{dmonths} months, #{ddays} days, #{dhours} hours, #{dminutes} minutes, and #{dseconds} seconds."

