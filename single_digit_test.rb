# This page will generate mutiple sigle digit
# addition questions for practice purpose
puts("Please enter today's date as (MMDDYYYY):")
date = gets.chomp
puts("Please enter your child's name:")
name = gets.chomp


def equation_generator(input_min, input_maxnum)
  x = rand(input_min..input_maxnum)
  y = rand(input_min..input_maxnum)
  z = x + y
  result = [x, y, z]
  return result
end

def num_to_equation(num)
  result = "#{num[0]} + #{num[1]} = ___          "
  return result
end

number_of_questions = 90
min = 1
max = 9

print_file = "exercise/#{name}_#{date}.txt"

new_file = File.new(print_file,'w')

new_file.puts("Name: __________________\n")
new_file.puts()
new_file.puts("Date: __________________\n")
new_file.puts ()
new_file.puts ()

i = 0
counter =0
while i  < number_of_questions
  xyz = equation_generator(min, max)
  equation = num_to_equation(xyz)
  if counter%3 == 0
    new_file.puts ()
  end
  new_file.print equation
  i += 1
  counter += 1
end


new_file.close


# Links to stackoverflow
# https://stackoverflow.com/questions/1608593/printing-a-file-to-a-printer-in-ruby
system("lpr", print_file) or raise "lpr failed"
