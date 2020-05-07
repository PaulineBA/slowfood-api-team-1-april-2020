RSpec.describe Order, type: :model do 
  describe 'order should have item' do 
    it { is_expected.to have_many :order_items }
  end
end