def plays_random(a1,a2,a3,a4,a5,a6,a7,a8,a9) #this function randomly selects a square from the remaining empty squares for the next "O" play. It takes in contents of all 9 squares (a through i) as input.
	all_hash = {1 => a1, 2 => a2, 3 => a3, 4 => a4, 5 => a5, 6 => a6, 7 => a7, 8 => a8, 9 => a9}
	puts "all_hash  is #{all_hash}"
	all_squares = [1,2,3,4,5,6,7,8,9]
	puts "all_squares is #{all_squares}"
	used_squares = [] #initiates an array that will contain untaken squares
	(1..9).each do |i|
		if all_hash[i] != """" #if a square is taken then it is pushed into the taken_squares array
			used_squares.push(i)
		end
	end
	puts "used_squares  is #{used_squares}"
	available_squares = all_squares - used_squares
	puts "available_squares pick  is #{available_squares}"	
	random_pick = available_squares.shuffle.pop.to_s #randommly selects a square from the untaken squares
	puts "random pick  is #{random_pick}"
	a = "a"
	out = a + random_pick 
	puts "out is #{out}"
	return out
end