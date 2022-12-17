print("Nhap so nguyen duong: ");
n_102 = gets.chomp.to_i
sum_102 = 0

for i_102 in 1..n_102
  print("Nhap mot so nguyen: ")
  num_102 = gets.chomp.to_i
  sum_102 += num_102
end

tb_102 = sum_102/n_102
print("Trung binh: ", tb_102)