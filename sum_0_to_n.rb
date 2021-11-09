class SequenceSum
    def self.show_sequence(n)
      total = 0
      numbers = []
      if (n == 0)
        return "0=0"
        elsif(n < 0)
        return "#{n}<0"
       else
        for i in 0..(n)
          total = total + i
          numbers[i] = [i]
        end
        end
        puts numbers
    end
  end


  SequenceSum.show_sequence(6)