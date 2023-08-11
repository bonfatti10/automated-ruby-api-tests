Quando('realizar a requisição GET ms-produtc') do
  @token = @service.call(ApiToken).token_get
  @response = @service.call(ListProduct).list_product(@token)
end

Entao('a API ira retornar os produtos cadastrados com status code {int}') do |expect_code|
  expect(@response.code).to eql expect_code
  expect(@response.message).to eql 'OK'
  expect(@response.body).to match_json_schema('list_product')
end

Quando('realizar a requisao GET com ID') do
  @token = @service.call(ApiToken).token_get
  id = @service.call(ListProduct).take_id(@token)
  @response = @service.call(ListProduct).list_id_product(@token, id)
end

Entao('a API ira retornar o ID com os dados cadastrados com status code {int}') do |expect_code|
  expect(@response.code).to eql expect_code
  expect(@response.message).to eql 'OK'
  expect(@response.body).to match_json_schema('list_product_id')
end
