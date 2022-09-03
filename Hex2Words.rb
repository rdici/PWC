#!ruby.exe

# AUTHOR: Robert DiCicco
# DATE: 2022-05-24
# Challenge 166 Hexadecimal Words ( Ruby )

letters =  { 'a'=>"a",'b'=>"b",'c'=>"c",'d'=>"d",'e'=>"e",'f'=>"f",'o'=>"0",'l'=>"1",'i'=>"1",'s'=>"5",'t'=>"7" };
selection = 0;

for selection in ARGV 
  selection = selection.to_i
  if (selection < 2  or selection > 8 ) 
    puts "Selection must be >= 2 and <= 8"
    exit
  end
end

File.foreach("Words.txt") { |line| 
  line = line.lstrip.rstrip.downcase 
  if line.size != selection 
    next
  end
  @arr = line.split("")
  found = 0
  for letter in @arr 
    if letters[letter] 
      found = found + 1 
      if (found == selection)
        line = line.tr('olist','01157')
        print "#{line} "
        STDOUT.flush
      end
    end
  end
}

# -----------------------------------------------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> ruby .\Hex2Words.rb 8
# da7aba5e de11ca7e de7a11ed d1abe7e5 d15ab1ed d15c105e f007ba11 1501a7ed 0ff1c1a1 7ac71ca1 

# PS G:\Projects\Perl\Challenges> ruby .\Hex2Words.rb 7
# be51de5 c1a55e5 c1a551c c011ec7 dec1ded def1c17 d15ea5e 

# PS G:\Projects\Perl\Challenges> ruby .\Hex2Words.rb 6
# acce55 affec7 a55e55 a55157 ba771e be11ef b0771e ca571e c105ed c0ffee deba7e decade dec1de 
# defea7 de7a11 de7ec7 effec7 e57a7e fa11ed f15ca1 175e1f 1a7e57 11771e 0ff1ce 0ff5e7 5e1ec7 
# 5e771e 50c1a1 57ab1e




