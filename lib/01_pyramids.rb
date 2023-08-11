#01_pyramids.rb

def pyramid
  print "Ecris un chiffre entre 1 et 9 : "
  number = gets.chomp
  number = number.to_i
  i = 1
  if number < 1
    puts "Donne moi un chiffre supérieur à 1"
    pyramid
  elsif number > 9
    puts "Donne moi un chiffre inférieur à 9"
    pyramid
  else 
    while i <= number
      puts "*" * i
      i += 1
    end
  end
end

pyramid