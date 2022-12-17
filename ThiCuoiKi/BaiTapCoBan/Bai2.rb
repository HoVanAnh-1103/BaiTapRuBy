# 2
print ("Nhap a :")
a_102 = gets.chomp.to_i
print ("Nhap b :")
b_102 = gets.chomp.to_i

def BieuThuc(a_102, b_102)
  ((3 * Math.sqrt(a_102))/(a_102 + Math.sqrt(a_102 * b_102) + b_102) - ( (3 * a_102) / ((a_102 * Math.sqrt(a_102)) - (b_102*Math.sqrt(b_102)))) + (1/ (Math.sqrt(a_102) - Math.sqrt(b_102))))
end

print (BieuThuc(a_102, b_102))