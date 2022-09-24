class Student
  
    def initialize(id, name, age,math,chemistry,physical)
       @id = id
       @name = name
       @age = age
      @math = math;
      @chemistry = chemistry
      @physical = physical
    end
  
    def show_profile
      puts "#{@id} #{@name} #{@age} #{@math} #{@chemistry} #{@physical}"
    end
  
    def cal_average
      arr =  [@math,@chemistry,@physical]
      sum = arr.sum()
  
      return sum*1.0/arr.length
    end
  end
  
  
  student = Student.new("1911505310102", "Hồ Thị Vân Anh", 21, 9,10,9)
  print "Profile : "
  student.show_profile
  puts "Trung bình Toán, Lý, Hóa : #{student.cal_average}"