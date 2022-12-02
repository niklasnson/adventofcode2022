playerB = 0

File.foreach("input.txt") do |line|
  turn = line.chomp.split()
  if turn[0] == "A" then
    if turn[1] == "X" then
      playerB = playerB + 3 + 0
    elsif turn[1] == "Y" then
      playerB = playerB + 1 + 3
    elsif turn[1] == "Z" then
      playerB = playerB + 2 + 3
    end
  elsif turn[0] == "B" then
    if turn[1] == "X" then
      playerB = playerB + 1 + 0
    elsif turn[1] == "Y" then
      playerB = playerB + 2 + 3
    elsif turn[1] == "Z" then
      playerB = playerB + 1 + 0
    end
  elsif turn[0] == "C" then
    if turn[1] == "X" then
      playerB = playerB + 1 + 0
    elsif turn[1] == "Y" then
      playerB = playerB + 2 + 3
    elsif turn[1] == "Z" then
      playerB = playerB + 2 + 3
    end
  end
end

puts "playerB score #{playerB}"

playerB = 0

File.foreach("input.txt") do |line|
  turn = line.chomp.split()
  if turn[0] == "A" then
    if turn[1] == "X" then
      playerB = playerB + 3 + 0
    elsif turn[1] == "Y" then
      playerB = playerB + 1 + 3
    elsif turn[1] == "Z" then
      playerB = playerB + 2 + 6
    end
  elsif turn[0] == "B" then
    if turn[1] == "X" then
      playerB = playerB + 1
    elsif turn[1] == "Y" then
      playerB = playerB + 2 + 3
    elsif turn[1] == "Z" then
      playerB = playerB + 3 + 6
    end
  elsif turn[0] == "C" then
    if turn[1] == "X" then
      playerB = playerB + 2 + 0
    elsif turn[1] == "Y" then
      playerB = playerB + 3 + 3
    elsif turn[1] == "Z" then
      playerB = playerB + 1 + 6
    end
  end
end

puts "playerB score #{playerB}"
