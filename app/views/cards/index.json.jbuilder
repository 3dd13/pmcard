json.array!(@cards) do |card|
  json.extract! card, :id, :title, :description, :buying_quantity, :price, :admin_id
  json.url card_url(card, format: :json)
end
