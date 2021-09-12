def program

puts "Teraz, wybierz którym wzorem mam obliczyć dla ciebie wynik: "
puts "1. Kwadrat sumy (a+b)^2"
puts "2. Kwadrat różnicy (a-b)^2"
puts "3. Różnica kwadratów a^2 - b^2"
puts "4. Suma sześcianów a^3 + b^3"
puts "5. Różnica sześcianów a^3 - b^3"
puts "6. Sześcian sumy (a+b)^3"
puts "7. Sześcian różnicy (a-b)^3"
puts "Podaj cyferkę przypisaną do odpowiedniego wzoru:"
metoda = gets.chomp.to_i
system ("cls")
puts "Brawo wybrałeś opcję numer #{metoda}"

case metoda
when 1
    puts "Kwadrat sumy (a+b)^2."
    puts "Teraz podaj mi dwie liczby (a oraz b) po każdej kliknij enter: "
    a = gets.chomp.to_i
    b = gets.chomp.to_i

    wynik = (a**2) + (2*a*b) + (b**2)

    puts "Wynik to: #{wynik}"

when 2
    puts "Kwadrat różnicy (a-b)^2."
    puts "Teraz podaj mi dwie liczby (a oraz b) po każdej kliknij enter: "
    a = gets.chomp.to_i
    b = gets.chomp.to_i

    wynik = (a**2) - (2*a*b) + (b**2)

    puts "Wynik to: #{wynik}"
when 3
    puts "Różnica kwadratów a^2 - b^2."
    puts "Teraz podaj mi dwie liczby (a oraz b) po każdej kliknij enter: "
    a = gets.chomp.to_i
    b = gets.chomp.to_i

    wynik = (a + b)*(a - b)

    puts "Wynik to: #{wynik}"
when 4
    puts "Suma sześcianów a^3 + b^3."
    puts "Teraz podaj mi dwie liczby (a oraz b) po każdej kliknij enter: "
    a = gets.chomp.to_i
    b = gets.chomp.to_i

    wynik = (a + b)*((a**2) - (a*b) + (b**2))

    puts "Wynik to: #{wynik}"
when 5
    puts "Różnica sześcianów a^3 - b^3."
    puts "Teraz podaj mi dwie liczby (a oraz b) po każdej kliknij enter: "
    a = gets.chomp.to_i
    b = gets.chomp.to_i

    wynik = (a - b)*((a**2) + (a*b) + (b**2))

    puts "Wynik to: #{wynik}"
when 6
    puts "Sześcian sumy (a+b)^3."
    puts "Teraz podaj mi dwie liczby (a oraz b) po każdej kliknij enter: "
    a = gets.chomp.to_i
    b = gets.chomp.to_i

    wynik = ((a**3) + (3*((a**2)*b)) + (3*(a*(b**2))) + (b**3))

    puts "Wynik to: #{wynik}"
when 7
    puts "Sześcian różnicy (a-b)^3."
    puts "Teraz podaj mi dwie liczby (a oraz b) po każdej kliknij enter: "
    a = gets.chomp.to_i
    b = gets.chomp.to_i

    wynik = ((a**3) - (3*((a**2)*b)) + (3*(a*(b**2))) - (b**3))

    puts "Wynik to: #{wynik}"
else
    puts "Podałeś złą liczbę."
end

end


puts "Cześć! "
puts "Mam na imię Lanek, służę do obliczania wyniku przez wzory skróconego mnożenia."
koniec = "y"
while koniec != "N"
program
puts "Czy chcesz policzyć coś jeszcze? (Y/N)"
koniec = gets.chomp
system ("cls")
end