FactoryBot.define do
  factory :order_items, class: OrderItem do
    order
    product
  end
end
