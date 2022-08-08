require 'rails_helper'

RSpec.describe 'machine list products' do
    let!(:products) do
        products = []
    end
    it 'can provide a list of products' do
        ocean_wave = Vendor.create!(name: "ocean_wave", id: 14)
        products.push(Product.create!(category: "candy", price: 3.5, id: 16, vendor_id: 14, machine_id: 1, name: "oc candy"))
        products.push(Product.create!(category: "chips", price: 2.75, id: 17, vendor_id: 14, machine_id: 1, name: "oc chips"))
        products.push(Product.create!(category: "cola", price: 2.5, id: 18, vendor_id: 14, machine_id: 1, name: "oc cola"))
        hersey = Vendor.create!(name: "hersey", id: 15)
        products.push(Product.create!(category: "candy", price: 3.75, id: 19, vendor_id: 15, machine_id: 1, name: "h candy"))
        products.push(Product.create!(category: "chips", price: 2.75, id: 20, vendor_id: 15, machine_id: 1, name: "h chips"))
        products.push(Product.create!(category: "cola", price: 2.5, id: 21, vendor_id: 15, machine_id: 1, name: "h cola"))

        get '/'

        expect(response).to be_successful

        expect(response).to render_template("index")
    end

    it 'can dispense a product' do
        Vendor.create!(name: "ocean_wave", id: 16)
        prod1 = Product.create!(category: "candy", price: 3.5, id: 22, vendor_id: 16, machine_id: 1, name: "oc candy")
        
        visit("/")
        fill_in('code', with: prod1.id)
        # find('#code').set(16)

        click_button('Dispense')

        expect(page).to have_content("Thank you, please enjoy your candy!")
    end
end