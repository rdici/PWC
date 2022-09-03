#!ruby.exe

p = Array.new
res = Array.new

p = [1,2,3]
res += p.permutation(3).to_a
puts "permutation() method form : #{p.permutation(3).to_a}\n\n"

for i in res do
  puts 1
end

