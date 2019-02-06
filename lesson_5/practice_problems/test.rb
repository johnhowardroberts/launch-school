arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

def multiple_of_three?(num)
  num % 3 == 0
end

arr.map do |sub_arr|
  sub_arr.select do |idx|
    puts idx
  end
  p arr
end
