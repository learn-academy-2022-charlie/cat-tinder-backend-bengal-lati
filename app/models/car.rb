class Car < ApplicationRecord
    validates :name, :year, :enjoys, :image, presence: true
    validates :name, length: {minimum: 2}
    validates :enjoys, length: {minimum: 10}
end
