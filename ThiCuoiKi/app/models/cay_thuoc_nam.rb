class CayThuocNam < ApplicationRecord
    scope :has_keyword, ->(keyword) { where("ten like ?", "%#{keyword}%") }
end
