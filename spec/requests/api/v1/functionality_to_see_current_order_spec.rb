RSpec.describe Api::V1::OrdersController, type: :request do 
  let!(:product_1) {create(:product, title: 'Pizza', id: 1)}
  let!(:product_2) {create(:product, title: 'Hamburger', id: 2)}

  before do
    post '/api/v1/orders', 
    params: {
      product_id: product_1.id
    }
    @order_id = JSON.parse(response.body)["order_id"]
  end
  
  describe 'POST api/order' do
    it "successfully" do       
      expect(JSON.parse(response.body)['message']).to eq 'The product has been added to your order'
    end
    
    it 'should return a 200 response' do
      expect(response).to have_http_status 200
    end

    it "should return order id in response" do
      order = Order.find(@order_id)
      expect(JSON.parse(response.body)["order_id"]).to eq order.id
    end
  end

  describe "PUT /api/orders/:id" do
    before do
      put "api/orders/#{@order_id}", params: { product_id: product_2.id }
      @order = Order.find(@order_id)
    end

    it "adds another product to the order" do
      expect(@order_items.count).to_eq 2
    end

    it "responds with order id" do
      expect(JSON.parse(response.body)["order_id"]).to eq @order.id
    end
  end
end