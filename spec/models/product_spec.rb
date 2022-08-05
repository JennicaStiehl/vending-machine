require 'rails_helper'

describe Product, type: :model do
    describe 'validations' do
        it should validate_presence_of :type
        it should validate_presence_of :price
        it should validate_presence_of :code
        it should validate_presence_of :name
    end
end