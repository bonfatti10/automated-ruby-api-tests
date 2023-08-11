#language: pt

@regressivo
Funcionalidade: Criar produto
Como PM
  Quero realizar requisições POST Product
  Para que possa cadastrar novos produtos 

@CreateProducts
Cenario: Criar produto com dados validos
  Quando criamos o produto com os dados necessarios correto
  Entao este produto deve ser criado com status code 201

@CreateProductsFail
Esquema do Cenario: Criar produto com dados invalidos
  Quando enviar a requisição post <cod_prod>
  Então deve retornar o status <cod_status>
  E a mensagem <message>

  Exemplos:
    | cod_prod         | cod_status | message                                |
    | 'invalid_ean'    | 400        | 'ean inválido'                         |
    | 'invalid_tipo'   | 400        | 'tipo inválido'                        |
    | 'invalid_class'  | 400        | 'classificacao inválido'               |
    | 'invalid_categ'  | 400        | 'categories inválido para este produto'|
