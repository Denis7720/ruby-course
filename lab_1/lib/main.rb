require_relative 'temperature'

puts "Input values like '10 C F'"
sequence = gets.chomp.split
example = Temperature.new(sequence[0].to_i, sequence[1], sequence[2])
example.convert
puts "#{sequence[0]} #{sequence[1]} = #{example.value} #{sequence[2]}"
