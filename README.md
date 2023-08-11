# Portifólio de testes automatizados em Ruby para APIs: :open_file_folder:

Portifólio de testes automatizados de API **Produtos**, desenvolvido na linguagem Ruby, uma linguagem dinâmica, open source com foco na simplicidade e na produtividade. 
Tem uma sintaxe elegante de leitura natural e de fácil escrita.

Neste framework trago um pouco de BDD, Faker, Get, Patch, Post, utilizado padrão de projeto PageObject, Reports.

---

## Índice: :books:
- [Requisitos](#-requisitos)
- [Gems utilizadas](#-gems-utilizadas)
- [Instalação](#-instalação)
- [Execução dos testes](#-execução-dos-testes)

---

## Requisitos: :speech_balloon:

* Ruby (versão v2.5 ou superior)
* Bundler (Gem)

**Ruby (versão v2.5 ou superior)** - Linguagem a qual utilizaremos para realizar automação de APIs.  
https://github.com/ruby/ruby  

**Bundler** - Gem para instalar, listar e gerenciar as depêndencias do projeto atual.  
https://github.com/bundler/bundler

---

## Gems utilizadas: 💎
source 'https://rubygems.org'

| Gem | Versão | Descrição |  
|-----------|:-----------:|:-----------|  
| [Cucumber](https://github.com/cucumber/cucumber-ruby) | 3.1.2 | Framework de testes que da suporte ao desenvolvimento orientado ao comportamento do usuário (BDD - Behavior-Driven Development). |  
| [Factory Bot](https://github.com/thoughtbot/factory_bot) | 6.1.0 | Fornece métodos de fábrica para criar acessórios de teste para testes automatizados de software. |
| [Faker](https://github.com/faker-ruby/faker) | 2.18.0 | Biblioteca para geração de dados falsos, como nomes, endereços e números de telefone. |
| [Httparty](https://github.com/jnunemaker/httparty) | 0.18.1 | Utilizada para realizar requisições de verbos HTTP (Post, Get, Put e Delete) em web services. |
| [Json Matchers](https://github.com/thoughtbot/json_matchers) | 0.11.1 | Necessária para realizar a validação das respostas em JSON retornado pelas APIs. |
| [Pry](https://github.com/pry/pry) | 0.13.1 | Usada para debug. Permite uso de breakpoints e visualisação de variáveis. |
| [Report Builder](https://github.com/rajatthareja/ReportBuilder) | 1.9 | Utilizada para para mesclar relatórios Cucumber JSON e construir relatório de teste HTML compatível com dispositivos móveis, relatório JSON e arquivo de novas tentativas. |
| [RSpec](https://rspec.info/documentation/) | 3.9.0 | É uma biblioteca que permite que se utilize asserções para validar os resultados das ações que realizamos. Nos ajuda a validar que o comportamento esperado foi obtido. |
| [Rubocop](https://github.com/rubocop/rubocop) | 1.16.1 | Analisador de código estático (também conhecido como linter) e formatador de código. Aplicará muitas das diretrizes descritas no Guia de Estilo da comunidade Ruby. |

---

## Instalação: :computer:
```bash
# Clonar o projeto no repositório:
$ git clone git@github.com:bonfatti10/automated-ruby-api-tests.git

# Acesse via terminal o diretório onde clonou o projeto com o comando:
`$ cd ../automated-ruby-api-tests`

# Execute o comando a seguir para instalar as dependências do projeto:
$ bundle install
```

---

## Execução dos testes: 🧪

**Obs: Para rodar os testes "Smoke" local (executar na branch "name/features" no diretorio raiz do projeto):** 

* Dev: 
    * ``cucumber -t 'not @wip and @smoke'``
* Dev Headless: 
    * ``cucumber -p dev_headless -t 'not @wip and @smoke'``
* QA: 
    * ``cucumber -p qa -t 'not @wip and @smoke'``
* QA Headless: 
    * ``cucumber -p qa_headless -t 'not @wip and @smoke'``

**Obs: Para configurar os testes "Smoke" na pipeline para rodar dentro do Azure:**

* Azure Devops - CI:
    * ``cucumber -p ci -t 'not @wip and @smoke'``

---
Developed by Bonfatti
