a = Array.new
a << 1
a << 2
a << 3

if (a.find_all { |e| a.count(e) > 1 } == true )