#!ruby.exe

triangle = [[1], [5,3], [2,3,4], [7,1,0,2], [6,4,5,2,8]];

minpath = 0;

triangle.each do |n|
  #print n.to_s + "\n"
  print n.min.to_s + ' '
  minpath = minpath + n.min
end
puts
puts "Minimum Sum Path = " + minpath.to_s
