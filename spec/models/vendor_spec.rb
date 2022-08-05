require 'rails_helper'

describe Vendor, type: :model do
    describe 'validations' do
        it 'validates presence of attributes' do
            should validate_presence_of :name
        end

        it 'validates relations' do
            should have_many :Products
        end
    end
end