#!/usr/bin/env ruby
# AUTHOR: Robert DiCicco
# DATE: 2022-10-11
# Challenge 186 Unicode Makeover ( Ruby )

myarr = ["ÃÊÍÒÙ", "âÊíÒÙ"]

for x in myarr
    for i in 0..(x.length-1)
      str = x[i]
      o = str.ord
      case o
      # CAPITAL A family
        when 192..197 then (print "A") 
      # CAPITAL E family
        when 200..203 then (print 'E')
      # CAPITAL I family
        when 204..207 then (print 'I')
      # CAPITAL O family
        when 210..214 then (print 'O')
      # CAPITAL U family
        when 217..219 then (print 'U')
      # SMALL LETTER a family
        when 224..229 then (print 'a')
      # SMALL LETTER e family
        when 232..235 then (print 'e')
      # SMALL LETTER i family 
        when 236..239then (print 'i')
      # SMALL LETTER o family 
        when 242..246then (print 'o')
      # SMALL LETTER u family
        when 249..252 then print 'u'
      else
        prints '?'
      end
    end
    puts " "
end

#---------------------------
# SAMPLE OUTPUT
# PS G:\Projects\Perl\Challenges> ruby .\Unicode.rb
# AEIOU 
# aEiOU