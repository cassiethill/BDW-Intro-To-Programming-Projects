#Variables
table_top_surface = 6 * 6
table_sides_surface = 0.3 * 6 * 4 
total_surface = table_top_surface + table_sides_surface
double_coated = (total_surface) * 2
four_tables = double_coated * 4

p "Assignment: tell us how many square feet of stain it would take to cover all the tables in this lab twice in a human readable format (a string)." 
p "First we must find the surface area of an individual table, adding the table top surface & the side surface to get #{total_surface} square ft."
p "Then we find the double coat to be #{double_coated} square ft."
p "Finally, we multiple this by 4 (the number of tables in the lab) to find that this task would require #{four_tables} square feet of stain."
