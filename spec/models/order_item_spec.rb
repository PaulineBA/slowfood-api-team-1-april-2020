RSpec.describe OrderItem, type: :model do 
  describe 'Database table' do
    it { is_expected.to have_db_column :order_id }
    it { is_expected.to have_db_column :product_id }
  end

  describe 'Relations' do
    it { is_expected.to belong_to :product }
    it { is_expected.to belong_to :order }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:order_items)).to be_valid
    end
  end
end
