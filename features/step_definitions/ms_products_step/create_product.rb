Quando('criamos o produto com os dados necessarios correto') do
  @token = @service.call(ApiToken).token_get
  payload = FactoryBot.build(:create_product).to_hash
  body = @service.call(CreatedProduct).create_body(payload)
  @response = @service.call(CreatedProduct).create_product(@token, body)
end

Entao('este produto deve ser criado com status code {int}') do |expectCode|
  expect(@response.code).to eq expectCode
  expect(@response.body).to match_json_schema('create_product')
end
