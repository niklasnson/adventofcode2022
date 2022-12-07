DATA_STREAM = File.read("input.txt").chars.to_a


def process(buffer, length)
  buffer.each_cons(length).each_with_index do |marker, i|
    break i + length if marker.uniq.count == length
  end
end

puts "#{process(DATA_STREAM, 4)}"
puts "#{process(DATA_STREAM, 14)}"
