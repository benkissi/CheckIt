json.array!(@products) do |product|
  json.extract! product, :id, :product_name, :manufacturer, :distributer, :expiry_date, :manufacturing_date, :description, :fda_approved, :gsa_approved
  json.url product_url(product, format: :json)
end
