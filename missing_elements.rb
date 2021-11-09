def get_missing_element(seq)
  total = 45
  sum = 0
  seq.each { |n| total = sum + n }
  res = total - sum
end


get_missing_element([0,5,1,3,2,9,7,6,4])