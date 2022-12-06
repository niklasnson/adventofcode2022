vessels, actions = File.read("input.txt").split("\n\n").freeze
MATCHER = /move (\d+) from (\d+) to (\d+)/.freeze

# split on new line, remove the numbers, do reverse.
CONTAINERS =
  vessels.split("\n")[...-1].reverse.map do |row|
    row.chars.each_slice(4).map { |stack| stack[1] }
  end.reduce(:zip).map do |item|
    item.flatten.compact.reject { |crate| crate == " " }
  end

def move(num, from, to, duper: false)
  CONTAINERS.map(&:dup)
  move = CONTAINERS[from.to_i-1].pop(num.to_i)
  move = move.reverse unless duper
  CONTAINERS[to.to_i - 1] += move
end

def parse(line)
  line.match(MATCHER) { |match| move(match[1], match[2], match[3]) }
end

actions.split("\n") do |line|
  parse(line)
end

puts "Top crates after moves are: #{CONTAINERS.map(&:last).join}"
