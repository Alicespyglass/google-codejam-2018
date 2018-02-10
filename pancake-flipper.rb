# s = number of pancakes
# k = size of flipper

def get_s(line)
  return line.split[0].length
end

def get_k(line)
  return line.split[1].to_i
end

def get_s_data(line)
  return line.split[0]
end

def count_sides(line, side)
  data_array = get_s_data(line).split("")
  count = 0
  data_array.each do | pancake |
    if pancake === side
      count += 1
    end
  end
  return count
end

def s_equals_k(s, k)
  return s === k
end

def all_same_side_up(line)
  s = get_s(line)
  return count_sides(line, "+") === s || count_sides(line, "-") === s
end

def answer(line)
  s = get_s(line)
  k = get_k(line)

  plus_sides = count_sides(line, "+")
  minus_sides = count_sides(line, "-")

  if all_same_side_up(line)
    return "0"
  end
  return "..."
end

def format_answer(line, index)
  solution = answer(line)
  puts "Case ##{index}: #{solution}"
end

def format_question(line, index)
  s = get_s_data(line)
  k = get_k(line)
  puts "Question ##{index}: #{s} #{k}"
end

def print(limit, input)
  check = []
  counts = Hash.new 0
  for i in (1..limit)
    format_question(input[i], i)
    format_answer(input[i], i)
    check.push(answer(input[i]))
  end

  check.each do | result |
    counts[result] += 1
  end
  puts counts
end

input = ARGF.readlines
number_of_tests = input[0].to_i

print(number_of_tests, input)

# count_sides(input[2], "+")
