# Load file
rucksacks = File.read("input.txt").split("\n").freeze
#rucksacks = ["vJrwpWtwJgWrhcsFMMfFFhFp"]

SCORES = { "a" => 1,
           "b" => 2,
           "c" => 3,
           "d" => 4,
           "e" => 5,
           "f" => 6,
           "g" => 7,
           "h" => 8,
           "i" => 9,
           "j" => 10,
           "k" => 11,
           "l" => 12,
           "m" => 13,
           "n" => 14,
           "o" => 15,
           "p" => 16,
           "q" => 17,
           "r" => 18,
           "s" => 19,
           "t" => 20,
           "u" => 21,
           "v" => 22,
           "w" => 23,
           "x" => 24,
           "y" => 25,
           "z" => 26,
           "A" => 27,
           "B" => 28,
           "C" => 29,
           "D" => 30,
           "E" => 31,
           "F" => 32,
           "G" => 33,
           "H" => 34,
           "I" => 35,
           "J" => 36,
           "K" => 37,
           "L" => 38,
           "M" => 39,
           "N" => 40,
           "O" => 41,
           "P" => 42,
           "Q" => 43,
           "R" => 44,
           "S" => 45,
           "T" => 46,
           "U" => 47,
           "V" => 48,
           "W" => 49,
           "X" => 50,
           "Y" => 51,
           "Z" => 52}

@score = 0

def score_for(char)
  SCORES[char]
end

def compare_and_score(lhs, rhs)
  matches = []
  matches = lhs.chars.find { |char| rhs.include?(char) }
  matches.chars.sum { |item| score_for(item) }
end

def process_rucksack(input)
  lhs, rhs = input.chars.each_slice(input.length / 2).map(&:join)
  @score = @score + compare_and_score(lhs, rhs)
end

rucksacks.each do |rucksack|
  process_rucksack(rucksack)
end

puts "Answer for part 1 is: #{@score}"

# Group by 3 lines, find item that is in all three groups = badges

input = File.read("input.txt").split("\n").map do |row|
  items = row.chars.to_a
  items.each_slice(items.size / 2).to_a
end

badges = input.each_slice(3).map { |elves| elves.map(&:flatten).reduce(&:&)[0] }
puts badges.sum { |item| score_for(item) }
