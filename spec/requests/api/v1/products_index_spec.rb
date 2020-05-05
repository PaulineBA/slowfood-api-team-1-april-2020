RSpec.describe Api::V1::ProductsController, type: :request do
  let!(:product) { create(:product, 
    title: 'Paneer Tikka', 
    description: 'Mjuka och saftiga bitar av hemlagad färskost. Marineras i tandoori masala och grillas i tandooriung.', 
    price: 90
  )}
  describe 'GET /v1/products' do
    before do
      get '/api/v1/products'
    end

    it 'should return a 200 response' do
      expect(response).to have_http_status 200
    end

    it "should return item's title" do
      expect(response_json['products'].first['title']).to eq 'Paneer Tikka'
    end

    it "should return item's description" do
      expect(response_json['products'].first['description']).to eq 'Mjuka och saftiga bitar av hemlagad färskost. Marineras i tandoori masala och grillas i tandooriung.'
    end
    
    it "should return item's price" do
      expect(response_json['products'].first['price']).to eq 90
    end
  end
end
