# Create a fibonacci secuence
require 'colorize'

# n   =	0	1	2	3	4	5	6	7	8	9	10	11	12	13	14	...
# xn =	0	1	1	2	3	5	8	13	21	34	55	89	144	233	377	.

def validate_number
  print "Enter a number to get the fibonacci sequence: "
  num = gets.chomp
  
  if !num.ord.between?(48, 57)
    msj = "\nEnter only numbers no other characters..."
    puts msj.colorize(:light_red)
    validate_number()
  else
    return fibs(num.to_i)
  end
end

# fibonacci sequence 
def fibs(num)
  from_num = [0, 1]

  if num == 0 
    from_num = [0]
  else
    (2..num).each do |i|
      from_num[i] = from_num[i - 1] + from_num[i - 2]
    end
  end
  result = from_num.join(', ')
  num = num.to_s 
  puts "\nUsing an amount of: #{num.colorize(:green)}, Fibonacci sequence: #{result.colorize(:green)}"
end

# fibobacci recursive 
def fibs_rec(num)
  if num == 0 
    return 0
  elsif num == 1 
    return 1 
  else 
    return fibs_rec(num - 1) + fibs_rec(num - 2)
  end
end

# storing the fibonacci sequence 
def fibs_sequence(num)
  fib_array = []
  (0..num).each do |n|
    fib_array << fibs_rec(n)
  end
  result = fib_array.join(', ') 
  num = num.to_s 
  puts "\nUsing an amount of: #{num.colorize(:green)}, Fibonacci recursive sequence: #{result.colorize(:green)}"
end

fibs_sequence(10) # recursively 
validate_number() # regular sequence 









# PRojecto Odin github 

# def fibs(n)
#   array = []
#   0.upto(n) do |i|
#     if i == 0
#       array << 0
#     elsif i == 1
#       array << 1
#     else 
#       fib = array[i - 1] + array[i - 2]
#       array << fib
#     end
#   end
#   array
# end

# # def fibs(n)
# #   (2..n).reduce([0, 1]) do |array, i|
# #     array.push(array[i - 1] + array[i - 2])
# #   end
# # end

# def fibs_rec(n)
#   # base cases 0 and 1
#   return [0] if n == 0
#   return [0, 1] if n == 1

#   array = fibs_rec(n - 1)
#   # add the last two to form new elements
#   array << array[-2] + array[-1]
# end

# p fibs(10)
# p fibs_rec(10)

# StoverFlow 
# def fibonacci(n)
#   n <= 1 ? n :  fibonacci( n - 2 ) + fibonacci( n - 1 ) 
# end
# puts fibonacci( 10 )