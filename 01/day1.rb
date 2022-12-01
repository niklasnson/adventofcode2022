elfs = {}
calories = 0
elf = 0

File.foreach("input.txt") do |line|
  if line.match(/^[\s]*$\n/)
    elfs.store(elf, calories)
    calories = 0
    elf = elf + 1
  else
    calories = calories + line.to_i
  end
end

# sort
puts elfs.sort_by {|_key, value| value}.to_h

