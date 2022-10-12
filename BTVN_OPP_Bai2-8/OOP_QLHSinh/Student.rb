class Student
    attr_accessor :name, :age, :hometown, :classStudent
  
    def initialize(name, age, hometown, classStudent)
      @name = name
      @age = age
      @hometown = hometown
      @classStudent = classStudent
    end
  
    def show()
      puts "HoTen: #{@name}, Tuoi: #{@age}, QueQuan: #{@hometown}, Lop: #{@classStudent}"
    end
  end