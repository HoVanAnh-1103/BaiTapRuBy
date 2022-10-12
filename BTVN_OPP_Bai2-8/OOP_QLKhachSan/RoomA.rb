class RoomA 
    @category
    @price

    attr_accessor :category,:price 

    def initialize
        @category = "A"
        @price = 500 
    end

    def to_s
        "Phong: Loai = A , Gia = 500"
    end

end