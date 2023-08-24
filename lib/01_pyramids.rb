#01_pyramids.rb

def half_pyramid
  print "Ecris un chiffre entre 1 et 9 : "
  number = gets.chomp
  number = number.to_i
  i = 1
  if number < 1
    puts "Donne moi un chiffre supérieur à 1"
    half_pyramid
  elsif number > 9
    puts "Donne moi un chiffre inférieur à 9"
    half_pyramid
  else 
    while i <= number
      puts "*" * i
      i += 1
    end
  end
end

# half_pyramid

def ask_floor
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux‐tu ?"
  print "> "
  return gets.chomp.to_i
end

def build_floor(total_floor,current_floor)
  print " "*(current_floor-total_floor)
  print "#"*(2*total_floor-1)
  puts
end

def build_pyramid(total_floor)
  puts "Voici la pyramide :"
  total_floor.times do |current_floor|
    build_floor(current_floor+1,total_floor)
  end
end

def full_pyramid
  build_pyramid(ask_floor)
end

full_pyramid