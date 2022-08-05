class Product < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :price
    validates_presence_of :type
    validates_presence_of :code
end