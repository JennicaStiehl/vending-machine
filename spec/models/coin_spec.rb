require 'rails_helper'

RSpec.describe Coin, type: :model do
    describe 'validations' do
        it 'validates presence of attributes' do
            should validate_presence_of :weight
            should validate_presence_of :size
            should validate_presence_of :value
        end
    end
end