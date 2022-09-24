print "Canh thu nhat: "
c1 = gets.to_i
print "Canh thu hai: "
c2 = gets.to_i
print "Canh thu ba: "
c3 = gets.to_i

CV = 0
p =0 
S = 0
if (c1 + c2 >= c3) & (c2 + c3 >= c1) & (c1 + c3 >= c2)
    puts "La mot tam giac"
    CV = c1 + c2 + c3
    puts "Chu vi: #{CV}"
    
    p = (c1 + c2 + c3) / 2
    S = Math.sqrt(p*((p - c1)*(p - c2)*(p - c3)))
    puts "Dien tich: #{S}"
else
    puts "Khum La mot tam giac"
end