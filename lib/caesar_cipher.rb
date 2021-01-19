str = ""
num = 0
def give_me_the_ord(char)
  return char.ord
end

def make_the_new_ord(nb,num)
  if nb != 32
    # uppercase letters management
    if nb > 64 && nb < 91
      nb += num
      if nb > 90
        nb = nb - 91 + 65
      end
    # lowercase letters managment
    elsif nb > 96 && nb < 123
      nb += num
      if nb > 122
        nb = nb - 123 + 97
      end
    end
  end
  return nb
end

def give_me_the_letter(num)
  return num.chr
end

def put_array_in_str(arr)
  return arr.join('')
end

def cut_string_into_char_arr(str)
  arr = []
  str.each_char{|char| arr.push(char)}
  return arr
end

#this method give an array of 2 boxes, 
#in the first : the text to encrypt, in the second : the encryptin key
def input
  arr = []
  puts "Please, give the text you want to encrypt :"
  arr.push(gets.chomp)
  puts "Please give the encryption key (a natural number) :"
  num = gets.chomp.to_i
  while(num < 0 || num > 26) do
    puts "Sorry, I admit only natural number between 0 and 25. Please, try again: "
    num = gets.chomp.to_i
  end
  num =
  arr.push(num)
  return arr
end

def caesar_cipher(str,num)
  
  # make a char array
  arr = cut_string_into_char_arr(str)
  arr2 = []
  # tranform each char into ASCII decimal number
  arr.each do |char|
    arr2.push(give_me_the_ord(char))
  end
  # encrypt each number with the key
  arr.clear
  arr2.each do |nb|
    arr.push(make_the_new_ord(nb,num))
  end
  # transform each number into ASCII letter
  arr2.clear
  arr.each do |nb|
    arr2.push(give_me_the_letter(nb))
  end
  # tranform the arr into a string
  arr = put_array_in_str(arr2)
  # print the string
  p arr
end

# collect inputs (text and the encryption key)
# ar = input
# str = ar[0]
# num = ar[1]

# caesar_cipher(str,num)
