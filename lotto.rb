def losuj
    5.times { print "#{rand(49)} " }
    puts rand(49)
end

def zasady
    puts "W losowaniu bierze udział 49 kul."
    puts "W zakładach prostych typuje się 6 z 49 liczb."
    puts "Wygrywasz za 3,4,5,6 trafień."
end

def czy_znasz_zasady
    puts "Znasz zasady takiej gry? (Tak/Nie)"
    @wiedza = gets.chomp.to_s.downcase
end

puts "Cześć, dziś zagramy w gre o nazwie Lotto."
czy_znasz_zasady
if @wiedza.to_s == "tak" then
    puts "To wspaniale możemy zacząć grę."
    losuj
    puts "Trafiłeś 6? ;)"
else
    puts "Oj, to niedobrze, przedstawię ci założenia gry."
    puts " "
    zasady
end