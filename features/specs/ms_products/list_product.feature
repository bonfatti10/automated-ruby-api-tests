#language: pt

@regressivo
Funcionalidade: Consultar MS-Product
  Como PM
  Quero realizar requisições GET na API MS-Product
  Para que possa consultar os produtos cadastrados

@consultarProduct
Cenario: Consultar lista de Product
  Quando realizar a requisição GET ms-product
  Entao a API ira retornar os produtos cadastrados com status code 200

@ConsultarProductId
Cenario: Realizar requisao Get com ID
  Quando realizar a requisao GET com ID
  Entao  a API ira retornar o ID com os dados cadastrados com status code 200
