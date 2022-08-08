class Machine < ApplicationRecord
    validates_presence_of :name

    has_many :Products

    def self.dispense_product(id)
        product = take_code(id)
        # take_coins(product.price)
        # validate_coins
        deliver(product.category)
    end

    def self.take_coins

    end

    def self.validate_coins
    end

    def self.take_code(id)
        Product.find(id)
    end

    def self.deliver(product)
        "Thank you, please enjoy your #{product}!"
    end
end