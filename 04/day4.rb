# load file
SECTIONS = File.read("input.txt").split("\n").map do |pair|
  pair.split(",").map do |range|
    begins, ends = range.split("-").map(&:to_i)
    begins..ends
  end
end

puts SECTIONS.count { |a,b| a.cover?(b) || b.cover?(a) }

puts SECTIONS.count { |a, b| a.begin <= b.end && a.end >= b.begin }
