require 'rails_helper'

describe Product, type: :model do
    describe 'validations' do
        it 'validates presence of attributes' do
            should validate_presence_of :type
            should validate_presence_of :price
            should validate_presence_of :code
            should validate_presence_of :name
        end
    end
end