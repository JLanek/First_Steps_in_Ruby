def find_average(nums)
  total = 0.0
  result = 0.0
  for i in 0..(nums.length - 1) do 
    total = total + nums[i];
    result = total/nums.length;
  end
    puts result
end

find_average([1,3,5,7])