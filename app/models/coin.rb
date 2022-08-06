class Coin < ApplicationRecord
    validates_presence_of :weight
    validates_presence_of :size
    validates_presence_of :value
end