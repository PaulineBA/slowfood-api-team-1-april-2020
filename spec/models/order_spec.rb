RSpec.describe Order, type: :model do 
  describe 'order should have item' do 
    it { is_expected.to have_many :order_items }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:order)).to be_valid
    end
  end
end
