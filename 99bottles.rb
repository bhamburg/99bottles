# Get user's favorite beer
print "What is your favorite beer? (default is Sam Adams)\n"
beer = gets.chomp.split.map(&:capitalize).join(' ')
beer = "Sam Adams" if beer == ""

# Get user's number of bottles
print "How many bottles of #{beer} do you have? (default is 99)\n"
n = gets.to_i
n = 99 if n == 0

# Print lyrics
while n > 0
    s = "s" unless n == 1
    puts "#{n} bottle#{s} of #{beer} on the wall.\n#{n} bottle#{s} of #{beer}.\nTake one down, pass it around."
    n -= 1
    s = "" if n == 1
    puts "#{n} bottle#{s} of #{beer} on the wall.\n\n"
end