def pillars(num_of_pillars, distance, width)
    if num_of_pillars <= 1
        print 0
  elsif num_of_pillars <= 2
      print (distance*100)
  else 
    print ((num_of_pillars-1)*(distance*100)) - ((num_of_pillars-2)*width)
  end
    end

    pillars(11, 15, 30)


    | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |


    270 + 15000