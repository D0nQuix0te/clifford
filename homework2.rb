## Let's start this homework file about with a comment.
## Now let's use the times method to put a string 3 times.
3.times { puts "Using the times method in a basic form." }

## Let's skip a line to make things pretty.
puts "\n"

## Now let's use the times method to print a string 3 times.
3.times { print "Charging up! " }

## Let's skip two lines to make things pretty.
puts "\n\n"

## Let's make some variables.
name = "Sanic"
friends = [ "Tails", "Knuckles", "Shadow"]
cool_level = 2
party_level = 4

## Let's put some stuff about Sanic with concatenation.
puts name + " is a cool dude."

## Let's skip a line to make things pretty.
puts "\n"

## Now let's put more stuff about Sanic with string interpolation.
puts "Don't you like #{name}?"

## Let's skip a line to make things pretty.
puts "\n"

## And finally let's look at a conditional to see if Sanic is cool and if he's having a party.
if friends.count > cool_level && friends.count > party_level
	puts "#{name} is pretty darn cool, so he's having a party.\nHis friends are:\n• #{friends.join("\n• ")}"
	if friends.include?("Tails")
		puts "Since Tails is here, this party can fly!"
	else
	end
elsif friends.count > cool_level && friends.count < party_level
	puts "#{name} is pretty darn cool, but not cool enough to have a party.\nHis friends are:\n• #{friends.join("\n• ")}"
	if friends.include?("Tails")
		puts "At least Tails is here, so we can fly!"
	else
	end
else
	puts "#{name} is kinda lame.\nHis only friends are:\n• #{friends.join("\n• ")}"
	if friends.include?("Tails")
		puts "Even though Tails is here, we can't fly because Tails is so depressed..."
	else
	end
end