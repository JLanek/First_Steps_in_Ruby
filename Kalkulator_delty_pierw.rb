def stop
    sleep 1.5
end


puts "Cześć! "
stop
puts "Program służy do obliczania delty oraz jej pierwiastków. "
stop
puts "Podaj 1 współczynnik funkcji kwadratowej (a): "
a = gets.chomp.to_i
puts "Podaj 2 współczynnik funkcji kwadratowej (b): "
b = gets.chomp.to_i
puts "Podaj 3 współczynnik funkcji kwadratowej (c): "
c = gets.chomp.to_i
stop
system ("cls")

delta = 0

delta = b**2 - 4*(a*c)

print "Delta wynosi #{delta} więc,"

if delta > 0
    puts " posiada 2 pierwiastki x1 i x2."
    x1 = (-b + Math.sqrt(delta)) / (2*a)
    x2 = (-b - Math.sqrt(delta)) / (2*a)
    puts "x1 = #{x1.round(2)}"
    puts "x2 = #{x2.round(2)}"

elsif delta < 0
    puts " nie posiada pierwiastków."

else
    puts " posiada jeden pierwiastek x0. "
    x0 = (-b)/(2*a)
    puts "x0 = #{x0.round(2)}"
end

sleep 4
system("cls")
puts " Dziękuję za skorzystanie z mojego kalkulatora! Program automatycznie zakończy działanie :)  "
sleep 2
