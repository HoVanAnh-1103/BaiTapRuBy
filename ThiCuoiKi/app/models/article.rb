class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, Length: { minimum: 10 }

    scope :has_keyword, ->(keyword) { where("title like ?", "%#{keyword}%") }

    
end
