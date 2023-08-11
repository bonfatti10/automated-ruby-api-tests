Quando('realizar a requisição GET sub categoria') do
  @response = @service.call(ListSubCategories).list_sub_categories
end

Entao('a API ira retornar as sub categorias cadastradas com status code {int}') do |expect_code|
  expect(@response.code).to eql expect_code
  expect(@response.message).to eql 'OK'
  expect(@response.body).to match_json_schema('list_sub_categories')
end
