class Vendor < ApplicationRecord
    validates_presence_of :name

    has_many :Products
end