arrLength = 0

print "Nhap so luong phan tu cua mang: "
arrLength = gets.to_i

array = Array.new(arrLength)

for i in 0..(arrLength - 1)
    print "Nhap phan tu thu #{i}: "
    array[i] = gets.to_i
end 

puts array.max
puts array.min

puts array.sum/array.length