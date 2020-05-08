RSpec.describe OrderItem, type: :model do 
  let!(:product) { create(:product, 
    title: 'Paneer Tikka', 
    description: 'Mjuka och saftiga bitar av hemlagad färskost. Marineras i tandoori masala och grillas i tandooriung.', 
    price: 90
  )}
  let!(:order) { create(:order) }
  
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
