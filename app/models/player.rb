class Player < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
    has_many :characters
end
