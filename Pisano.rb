fibs = Array.new
fibs = %w(0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765,);
outarr = [];  # array to hold output
MODULO = 3;

LETTER_MATCH = Regexp.new(('a'..'z').collect do |letter|
  "#{letter}+"
end.join('|'))

def repeated(string)
  string.scan(LETTER_MATCH).sort_by(&:length).last
end

str = "0112022101120221345"
len = str.length
(0..len).each do |i|
  puts str[i..len-1];
end

t = "acgtcfactagtcagcatatgcaacgtacgacgccccccccc";
puts t.to_enum(:scan,/([acgt]+).*(\1).*(\1)/).map { Regexp.last_match[1] }







