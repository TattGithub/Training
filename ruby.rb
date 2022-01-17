puts "Welcome to authenticator"
users = [
  {username: "tania", password: "12"},
  {username: "serg", password: "14"},
  {username: "alex", password: "18"},
  {username: "mark", password: "19"}
]

def passwordmethod(pass)
  puts "What is your Password"
  passwordget = gets.chomp
  if pass==passwordget
    puts "Authentification was succesful"
    # puts pass
  else
    puts "incorrect password"
    puts "Do you want to try again? y- yes, n-no"
    yn=gets.chomp.downcase
    if yn=="y"
      passwordmethod(pass)
    else
      puts "You decided not to try"
      exit
    end
  end
end

def username(user,users)
  if user=="y"
  puts "What is your Username"
  usernameget = gets.chomp
  recordcheck(usernameget,users)
  else
    puts "You decided not to try"
    exit
  end
end

def recordcheck(usernameget,users)
users.each { |record|
  username = record[:username]
    passwordmethod(record[:password]) if username == usernameget
}
puts "Do you want to try again? y- yes, n-no"
yn=gets.chomp
 username(yn,users)
end

puts "What is your Username"
usernameget = gets.chomp
recordcheck(usernameget,users)
