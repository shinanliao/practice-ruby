#1
puts "List your 5 favorite food:"
food = []
5.times do
  food << gets.chomp
end

p food


#2
puts "List your 5 favorite food:"
food = []
5.times do
food << gets.chomp
end
index = 0
while index < food.length
  p "I love #{food[index]}"
  index += 1
end


#3
