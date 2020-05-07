RSpec.describe Order, type: :model do 
  describe 'order should have item' do 
    it { is_expected.to have_many :order_items }
  end
end
RSpec.describe OrderItem, type: :model do 
  describe 'Database table' do
    it { is_expected.to have_db_column :order_id }
    it { is_expected.to have_db_column :product_id }
  end
  describe 'Relations' do
    it { is_expected.to belong_to :product }
    it { is_expected.to belong_to :order }
  end
end