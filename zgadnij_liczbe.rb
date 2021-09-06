puts "Cześć! "
sleep 1.5
puts "Podaj mi swoje imię: "
name = gets.chomp
system ("cls")
puts "Gra polega na odganięciu liczby z przedziału 1 do 10 "
sleep 2
system ("cls")
puts "Powodzenia! "

x = rand(1..10)
zmienna = 0
while zmienna != x
    sleep 1
    system ("cls")
    puts "Podaj swoja liczbe."
    zmienna = gets.chomp.to_i
if zmienna == x
    puts "Wygraleś!"
else
    puts "Graj dalej!"
end
end

puts "Do zobaczenia następnym razem #{name}! Program zamknie się automatycznie. "
sleep 3