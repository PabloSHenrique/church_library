class Book < ApplicationRecord

    validates :title, presence: true, uniqueness: true
    validates :author, presence: true
    validates :book_code, presence: true, uniqueness: true
    validates :status, inclusion: {in: [true, false]}

end 