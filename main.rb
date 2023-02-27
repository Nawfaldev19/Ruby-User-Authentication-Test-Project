database = [
  { username: 'nawfal', password: 'busbus' },
  { username: 'imran', password: 'nanana' },
  { username: 'billi', password: 'heh' }
]
# print database[1][:username]

userInput = ''
while userInput != 'n'
  puts 'username:'
  userInput = gets.chomp
  userFound = database.select { |user| user[:username] == userInput }
  if userFound.empty? # check Username
    puts 'the wrong username'
    next
  end

  puts 'password:'
  userInput = gets.chomp
  if userFound[0][:password] == userInput
    puts userFound[0]
  else puts "wrong password"
  end
  puts "press n to quit and anyother to continue"
  userInput = gets.chomp
end
puts "program ended"
