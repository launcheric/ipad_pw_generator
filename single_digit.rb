def equation_generator(input_min, input_maxnum)
  x = rand(input_min..input_maxnum)
  y = rand(input_min..input_maxnum)
  z = x + y
  result = [x, y, z]
  return result
end

equation = equation_generator(0,10)
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

puts("Name: __________________\n")
puts("Date: __________________\n")
puts ()
puts ()

i = 0
while i  < number_of_questions
  xyz = equation_generator(min, max)
  x = num_to_string(xyz[0]).unshift(" ")
  y = num_to_string(xyz[1]).unshift("+")
  z = num_to_string(xyz[2]).unshift(" ")
  puts x.join('')
  puts y.join('')
  puts ("______")
  puts ("         = #{answer_key[i]}")
  puts ()
  i += 1
end

puts ("Anser to the ipad password is: ___ ___ ___ ___ ")
puts ("                                A   B   C   D")
