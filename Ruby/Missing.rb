supplied_array = %w[ PELR PREL PERL PRLE PLER PLRE EPRL EPLR ERPL ERLP ELPR ELRP RPEL RPLE REPL RELP RLPE RLEP LPER LPRE LEPR LRPE LREP ] ;

#supplied_array.each{|val| puts val}

pn = %w[P E R L];

# supplied_array.each do | val |
#   print "#{val} ";
# end

#puts pn.permutation;

arr = "#{pn.permutation(4).to_a}";
print "#{arr[0]}";

#puts perm;