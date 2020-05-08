FactoryBot.define do
  factory :order_items, class: OrderItem do
    order_id { 1 }
    product_id { 1 }
  end
end
