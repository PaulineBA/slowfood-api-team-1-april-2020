class Api::V1::OrdersController < ApplicationController
  def create 
    order = Orders.create
    order.order_item.create(product_id: params([:product_id]))
    render json:{message: 'the product has been added to your order'}
  end


end
