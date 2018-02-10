def test(idx)
  puts idx*2
end

ARGF.each_with_index do |line, idx|
  if idx > 0
    print "Case ##{idx}:", test(idx)
  end
end
