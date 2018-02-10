def params(line, index)
  params = line.split
  s = params[0]
  k = params[1]
  puts "Case ##{index}: #{s} #{k}"
end

def test(limit, input)
  for i in (1..limit)
    params(input[i], i)
  end
end

lines = ARGF.readlines
number_of_tests = lines[0].to_i

test(number_of_tests, lines)
