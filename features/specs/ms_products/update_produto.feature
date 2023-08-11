#language: pt

@regressivo
Funcionalidade: Atualizar MS-Product
  Como PM
  Quero realizar requisições Put Product
  Para que possa atulizar dados dos produtos cadastrados

@updateProducts
Cenario: Atulizar dados de Product
  Quando realizar a requisição Patch ms-product
  Entao a API ira retornar o produto com os dados atualizados com status code 200
