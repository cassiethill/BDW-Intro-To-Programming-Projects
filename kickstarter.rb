#Variables

successful_dollars = 305000000
fee = 0.05
require 'date'
today = Date.today
launch = Date.new(2009, 4, 28)
cashmoney = (successful_dollars * fee)/(today - launch).to_i

p "Assignment: Calculate the average amount of revenue that Kickstarter makes a day based on revenue stats." 

p "Kickstarter launched April 29th, 2009 and has made 5% off of $305M successful project dollars since this date." 

p "1st. How much did Kickstarter make in total revenue since launch?"

p successful_dollars * fee

p "Now, how many days has Kickstarter been kickin'?"

p (today - launch).to_i

p "Finally, spread that cash across the number of days Kickstarter has been around"

p (successful_dollars * fee)/(today - launch).to_i

p "That's right, Kickstarter employees are raking in $#{cashmoney} per day." 
