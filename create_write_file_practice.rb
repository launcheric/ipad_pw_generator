# Links on how to create a file
# https://stackoverflow.com/questions/7911669/how-to-create-a-file-in-ruby
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

answer_key = ["A", "B", "C", "D", "E", "F", "G", "H", "I"]
def num_to_string(num)
  result1 = num.to_s
  result = num.to_s.each_char.map {|c| c.to_i}
  while result.length < 3
    result.unshift(" ")
  end
  return result
end

number_of_questions = 4
min = 0
max = 9

print_file = "exercise/#{name}_#{date}.txt"

new_file = File.new(print_file,'w')

new_file.puts("Name: __________________\n")
new_file.puts()
new_file.puts("Date: __________________\n")
new_file.puts ()
new_file.puts ()

i = 0
while i  < number_of_questions
  xyz = equation_generator(min, max)
  x = num_to_string(xyz[0]).unshift(" ")
  y = num_to_string(xyz[1]).unshift("+")
  z = num_to_string(xyz[2]).unshift(" ")
  new_file.puts x.join('')
  new_file.puts y.join('')
  new_file.puts ("______")
  new_file.puts ("         = #{answer_key[i]}")
  new_file.puts ()
  i += 1
end

new_file.puts ("______ + ______ = E")
new_file.puts ("   A        B")
new_file.puts ("______ + ______ = F")
new_file.puts ("   C        D")
new_file.puts ()
new_file.puts ()
new_file.puts ("Anser to the ipad password is: _____ _____ ")
new_file.puts ("                                  E    F")
new_file.close


# Links to stackoverflow
# https://stackoverflow.com/questions/1608593/printing-a-file-to-a-printer-in-ruby
puts (print_file)
system("lpr", print_file) or raise "lpr failed"
