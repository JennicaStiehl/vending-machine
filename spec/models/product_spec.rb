require 'rails_helper'

describe Product, type: :model do
    describe 'validations' do
        it 'validates presence of attributes' do
            should validate_presence_of :type
            should validate_presence_of :price
            should validate_presence_of :code
            should validate_presence_of :name
        end

        # it 'validates relations' do
        #     should have_one :Vendor
        #     should belong_to :Machine
        # end
    end
end