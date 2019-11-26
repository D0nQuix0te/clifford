n = 1
while n < 1000 do
	if n.even?
		puts "#{n} is even!"
	else
		puts "#{n} is odd. Boo..."
	end
	n += 1
end