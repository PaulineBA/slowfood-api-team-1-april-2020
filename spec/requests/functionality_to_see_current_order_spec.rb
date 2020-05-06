RSpec.describe Api::OrdersController, type: :request do 
let!(:product_1) {create(:product, title: 'Pizza', id: 1)}
let!(:product_2) {create(:product, title: 'Hamburger', id: 2)}
it "successfully" do 
post '/api/v1/orders', params: {id:product_1}
expect(JSON.parse(response.body)['message']).to eq 'The product has been added to your order'

end

end