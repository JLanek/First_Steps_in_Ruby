class Lotto
  attr_reader :losowanie

  def initialize
    @losowanie = (1..49).to_a.sample(6)
  end

  def powitanie
    puts "Cześć, dziś zagramy w gre o nazwie Lotto."
    czy_znasz_zasady
    gra
  end

  def czy_znasz_zasady
    puts "Znasz zasady takiej gry? (Tak/Nie)"
    @wiedza = gets.chomp.to_s.downcase
  end

  def gra
    system('clear')
    if @wiedza.to_s == "tak" || @wiedza_po == "tak" then
      puts "To wspaniale możemy zacząć grę."
      wybierz_liczby
      puts "Wybrałeś następujące liczby: #{@kupon.join(", ")}"
      puts "Wylosowane liczby to: #{losowanie.join(", ")}"
      sprawdz_wygrana
      zakonczenie
    elsif @wiedza_po.to_s == "nie"
      puts "Miło było Cię poznać. :D"
    else
      puts "Oj, to niedobrze, przedstawię ci założenia gry: "
      zasady
    end
  end

  def wybierz_liczby
    puts "Podaj swoje liczby z zakresu 1 do 49, oddzielone przecinkiem, np. 1, 2, 3, 4, 5, 6"
    @kupon = gets.chomp.to_s
    @kupon = @kupon.split(',').map(&:to_i)
    validuj_kupon
    system('clear')
  end

  def validuj_kupon
    return if @kupon.uniq.size == 6 && @kupon.max <= 49 && @kupon.min >= 1

    puts "Podano niewłaściwe liczby, spróbuj jeszcze raz."
    wybierz_liczby
  end

  def sprawdz_wygrana
    roznica = @kupon - losowanie
    trafione = @kupon - roznica
    wiadomosc = trafione.size.positive? ? "Trafiłeś #{trafione.size}: #{trafione.join(", ")}" : "Niestety, tym razem się nie udało."
    puts wiadomosc
  end

  def zasady
    puts "- W losowaniu bierze udział 49 kul."
    puts "- W zakładach prostych typuje się 6 z 49 liczb."
    puts "- Wygrywasz za 3,4,5,6 trafień."
    puts "Chcesz spróbować swoich sił w tej grze? (Tak/Nie)"
    @wiedza_po = gets.chomp.to_s.downcase
    system('clear')
    gra
  end

  def zakonczenie
    puts "Chcesz zagrać jeszcze raz?"
    @wynik = gets.chomp.to_s.downcase
    if @wynik == "tak" then
      gra
    else
      puts "Miło było Cię poznać."
    end
  end
end

Lotto.new.powitanie
