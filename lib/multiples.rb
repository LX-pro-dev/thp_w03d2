def multi_three(num)
  return num % 3 == 0 ? true : false
end

def multi_five(num)
  return num % 5 == 0 ? true : false
end

def sum_of_3_or_5_multiples(final_number)
  sum = 0
  for x in (0..final_number) 
    if (multi_five(x) || multi_three(x))
      sum += x
    end
  end
  return sum
end

def good_input
  puts "Puts your natural number here : "
  num = gets.chomp.to_i
  puts num
  while num <= 0 do
    puts "Sorry I admit only natural number (> 0). Please, try again: "
    num = gets.chomp.to_i
  end
end

puts sum_of_3_or_5_multiples(10)