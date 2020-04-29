users = [
  {username: "name1", password: "password1"},
  {username: "name2", password: "password2"},
  {username: "name3", password: "password3"}
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Credentials not met"
end

puts "Welcome to authenticator"
25.times {print "-"}
puts
puts "This"
puts "program"

attempts = 1
while attempts < 4
  print "username: "
  username = gets.chomp
  print "password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1
end
