if true
	puts "it is true!"
end

if false
	"puts this code never runs"
end

if 1 + 1 == 2
	puts "math is correct"
end

if 1 + 1 == 3
	puts "terryology"
end

# this is a list of class attendees
a = [ "ally", "anne", "kyle", "cliff", "devin" ]

if a.include?("sam")
	puts "sam was in class today"
else
	puts "lame"
	puts "this is stupid without sam"
end