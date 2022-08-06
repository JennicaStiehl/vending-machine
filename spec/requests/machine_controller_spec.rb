require 'rails_helper'

RSpec.describe 'machine list products' do
    it 'can provide a list of products' do
        ocean_wave = Vendor.new(name: "ocean_wave", id: 1)
        ocean_wave_candy = Product.create!(category: "candy", price: 3.5, code: "001", vendor_id: 1, machine_id: 1, name: "oc candy")
        ocean_wave_chips = Product.create!(category: "chips", price: 2.75, code: "002", vendor_id: 1, machine_id: 1, name: "oc chips")
        ocean_wave_cola = Product.create!(category: "cola", price: 2.5, code: "003", vendor_id: 1, machine_id: 1, name: "oc cola")
        hersey = Vendor.create!(name: "hersey", id: 2)
        hersey_candy = Product.create!(category: "candy", price: 3.75, code: "004", vendor_id: 2, machine_id: 1, name: "h candy")
        hersey_chips = Product.create!(category: "chips", price: 2.75, code: "005", vendor_id: 2, machine_id: 1, name: "h chips")
        hersey_cola = Product.create!(category: "cola", price: 2.5, code: "006", vendor_id: 2, machine_id: 1, name: "h cola")

        get '/machine_products'

        expect(response).to be_successful
        results = JSON.parse(response.body, symbolize_names: true)
        expect(results[0][:category]).to eq("candy")
        expect(results[0][:name]).to eq("oc candy")
        expect(results[1][:category]).to eq("chips")
        expect(results[1][:name]).to eq("oc chips")
    end
end