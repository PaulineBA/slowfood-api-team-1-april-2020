class OrderSerializer < ActiveModel::Serializer
  attributes :id, :products, :total, :order_total

  def products
    object.order_items.group_by(&:product_id).map do |_key, value|
      product = value.uniq(&:product_id)[0].product
      { amount: value.size, title: product.title, price: (value.size * product.price), product_id: product.id }
    end
  end

  def total
    object.order_items.joins(:product).sum('products.price')
  end
end