def get_average(marks)
        total = 0
    for i in 0..(marks.length - 1) do 
        total = total + marks[i];
        result = total/marks.length;
        puts total;
    end 
    puts result;
  end


get_average([2, 2, 2, 2])