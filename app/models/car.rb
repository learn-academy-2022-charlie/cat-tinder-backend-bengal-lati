class Car < ApplicationRecord
    validates :name, :year, :enjoys, :image, presence: true
end
