def powitanie

    puts "Cześć, dziś zagramy w gre o nazwie Lotto."
    czy_znasz_zasady
    gra

end

def czy_znasz_zasady

    puts "Znasz zasady takiej gry? (Tak/Nie)"
    @wiedza = gets.chomp.to_s.downcase
    sleep(3)

end

def gra
    
    system('clear')
    if @wiedza.to_s == "tak" || @wiedza_po == "tak" then
        sleep(2)
        puts "To wspaniale możemy zacząć grę."
        sleep(2)
        losuj
        puts "Trafiłeś 6? ;)"
        @wynik = gets.chomp.to_s.downcase
        zakonczenie
    elsif @wiedza_po.to_s == "nie"
        puts "Miło było cię poznać. :D"
    else
        puts "Oj, to niedobrze, przedstawię ci założenia gry: "
        zasady
    end

end

def losuj

    5.times { print "#{rand(1..49)} " }
    puts rand(1..49)

end

def zasady

    puts "- W losowaniu bierze udział 49 kul."
    puts "- W zakładach prostych typuje się 6 z 49 liczb."
    puts "- Wygrywasz za 3,4,5,6 trafień."
    sleep (5)
    puts "Chcesz spróbować swoich sił w tej grze? (Tak/Nie)"
    @wiedza_po = gets.chomp.to_s.downcase
    system('clear')
    gra

end

def zakonczenie
    system('clear')
    puts "Chcesz zagrać jeszcze raz?"
    @wynik = gets.chomp.to_s.downcase
    if @wynik == "tak" then
        gra
    else
        puts "Miło było cię poznać."
    end
end

powitanie
