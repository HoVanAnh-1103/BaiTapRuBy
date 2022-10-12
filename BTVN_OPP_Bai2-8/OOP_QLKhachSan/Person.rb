class Person 
    @name
    @age 
    @id
    @roomType
    @numRent

    attr_accessor :id,:name,:age,:roomType,:numRent

    def initialize(id,name,age,roomType,numRent)
        @id = id 
        @name = name 
        @age = age 
        @roomType = roomType
        @numRent = numRent
    end

    def to_s
        "NguoiThuePhong:" + "ID= #{@id}" + ",HoTen= #{@name}" + ",Tuoi= #{@age} + LoaiPhong= #{@roomType} + SoNgayThue = #{@numRent}"
    end
    
end

