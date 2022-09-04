#!julia.exe

# AUTHOR: Robert DiCicco
# DATE: 2022-05-24
# Challeng 166 Hexadecimal Words ( Julia )

letters = Dict( "a"=>"a","b"=>"b", "c"=>"c","d"=>"d","e"=>"e","f"=>"f","o"=>"0","l"=>"1", "i"=>"1", "s"=>"5","t"=>"7" )

function checkArgs(args)
  global num
  try
    num = parse(Int64, args[1])
  catch
    println("Error: Argument must be an integer")
    exit(0)
  finally 
    if num < 2 || num > 8
      println("Error: Argument must be 2 <= n <= 8")
      exit(0)
    else
      main(num)
    end
  end
end

function tr(str, reps...)
  d = Dict(reps)
  return(map(s -> get(d,s,s), str))
end

function main(selection)
  open("Words.txt") do f
    while ! eof(f) 
       s = readline(f)  
       found = 0 
       s = strip(s) 
       s = lowercase(s)
       if length(s) == selection
        arr = split(s,"")
          for i in (arr)
            if (haskey(letters, i))
              found += 1
            end
          end
          if found == selection
            s = tr(s,'o'=>'0','l'=>'1','i'=>'1','s'=>'5','t'=>'7')
            print("$s ")
          end
       end 
    end
    close(f)
  end
  
end

checkArgs(ARGS)

#---------------------------------------------------------------------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> julia .\Hex2Words.jl 8
# da7aba5e de11ca7e de7a11ed d1abe7e5 d15ab1ed d15c105e f007ba11 1501a7ed 0ff1c1a1 7ac71ca1 

# PS G:\Projects\Perl\Challenges> julia .\Hex2Words.jl 7
# be51de5 c1a55e5 c1a551c c011ec7 dec1ded def1c17 d15ea5e 

# PS G:\Projects\Perl\Challenges> julia .\Hex2Words.jl 6
# acce55 affec7 a55e55 a55157 ba771e be11ef b0771e ca571e c105ed c0ffee deba7e decade dec1de 
# defea7 de7a11 de7ec7 effec7 e57a7e fa11ed f15ca1 175e1f 1a7e57 11771e 0ff1ce 0ff5e7 5e1ec7 5e771e 50c1a1 57ab1e
