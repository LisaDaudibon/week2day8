#00_hello.rb

# input = ""

def say_hello
  print "Ecris ton prénom : "
  input = gets.chomp
  puts "Hello, #{input} !"
end

say_hello