#!ruby.exe
require 'prime'

Seen = Hash.new(0);

Seen[909] = 1;
Seen[908] = 1;
Seen.has_key?(910) ? (puts "key exists") : (puts "key does NOT exist");


def rotate( c_int )
  c_str = c_int.to_s;
  c_str_len = c_str.length;
  #puts "Len = #{c_str_len}";
  return(play_pass(c_str,1));
end

def validate( c )
  Prime.prime?(c) ? true : false ;
end

(100..200).each do |candidate|
  retval = validate(candidate)
  if retval
    puts candidate
    rotcan = rotate(candidate)
    puts rotcan;
  end
end