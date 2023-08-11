Quando('realizar a requisição Patch ms-produtc') do
  @token = @service.call(ApiToken).token_get
  id = @service.call(ListProduct).take_id(@token)
  payload = FactoryBot.build(:create_product).to_hash
  body = @service.call(UpdateProduct).update_body(payload)
  binding.pry
  @response = @service.call(UpdateProduct).update_put_product(@token, body, id)
end

Entao('a API ira retornar o produto com os dados atualizados com status code {int}') do |expect_code|
  expect(@response.code).to eql expect_code
  expect(@response.message).to eql 'OK'
  expect(@response.body).to match_json_schema('update_product')
end
