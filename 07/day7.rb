lines = File.read("input.txt").split("\n").freeze

stack = []
dirs = Hash.new(0)

lines.each do |line|
  case line
  when /\$ cd (.+)/
    dir = "#{$1}"
    dir == ".." ? stack.pop : stack << dir
  when /(\d+) (.+)/
    path = stack.dup
    loop do
      dirs[path.dup] += $1.to_i
      path.pop
      break if path.empty?
    end
  end
end

puts  "Q1: #{ dirs.values.select { |size| size < 100_000 }.sum }"

used = dirs[["/"]]
target = used - (70_000_000-30_000_000)

puts "Q2: #{dirs.values.sort.detect { |size| size >= target } }"

