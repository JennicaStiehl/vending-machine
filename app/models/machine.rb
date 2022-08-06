class Machine < ApplicationRecord
    validates_presence_of :name

    has_many :Products

    def self.dispense_product(code)
        product = take_code(code)
        # take_coins(product.price)
        # validate_coins
        deliver(product.category)
    end

    def self.take_coins

    end

    def self.validate_coins
    end

    def self.take_code(code)
        Product.find_by(code: code.to_s)
    end

    def self.deliver(product)
        "Thank you, please enjoy your #{product}!"
    end
end