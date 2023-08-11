#language: pt

@regressivo
Funcionalidade: Consultar Sub categories
  Como PM 
  Quero realizar requisições GET na API sub categorias
  Para que possa consultar as sub categorias de produtos cadastradas
  
@consultarSubCategories
Cenario: Consultar Lista sub categories
  Quando realizar a requisição GET sub categoria
  Entao a API ira retornar as sub categorias cadastradas com status code 200
