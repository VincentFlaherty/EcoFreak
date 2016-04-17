json.array!(@orders) do |order|
  json.extract! order, :id, :user, :line_item, :item, :quantity, :price, :total
  json.url order_url(order, format: :json)
end
