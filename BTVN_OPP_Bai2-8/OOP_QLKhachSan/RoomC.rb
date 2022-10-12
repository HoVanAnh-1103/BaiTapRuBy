class RoomC
    @category
    @price

    attr_accessor :category,:price 

    def initialize
        @category = "C"
        @price = 100 
    end

    def to_s
        "Phong: Loai = C , Gia = 100"
    end

end