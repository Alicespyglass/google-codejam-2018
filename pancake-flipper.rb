def get_s(line)
  return line.split[0]
end

def get_k(line)
  return line.split[1]
end

def answer(line, index)
  s = "solution"
  puts "Case ##{index}: #{s}"
end

def question(line, index)
  s = get_s(line)
  k = get_k(line)
  puts "Question ##{index}: #{s} #{k}"
end

def print(limit, input)
  for i in (1..limit)
    question(input[i], i)
    answer(input[i], i)
  end
end

input = ARGF.readlines
number_of_tests = input[0].to_i

print(number_of_tests, input)
