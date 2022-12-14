require 'rails_helper'

RSpec.describe Machine, type: :model do
    describe 'validations' do
        it 'validates presence of attributes' do
            should validate_presence_of :name
        end

        it 'validates relations' do
            should have_many :Products
        end
    end

    describe ".dispense_product" do
        context "given the proper combination of coins" do
            it "dispenses the product that cooresponds to the code given" do
                ocean_wave = Vendor.new(name: "ocean_wave", id: 12)
                ocean_wave_candy = Product.create!(category: "candy", price: 3.5, id: 14, vendor_id: 12, machine_id: 1, name: "oc candy")

                expect(Machine.dispense_product(14)).to eq("Thank you, please enjoy your candy!")
            end
        end
    end
end