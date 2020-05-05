
RSpec.describe Product, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :category }
    it { is_expected.to have_db_column :price }
    it { is_expected.to have_db_column :image_url }
    it { is_expected.to have_db_column :tag }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :category }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :image_url }
  end

  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(FactoryBot.create(:product)).to be_valid
    end
  end
end
