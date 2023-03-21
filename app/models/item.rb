class Item < ApplicationRecord
    validates_presence_of :name
    validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
