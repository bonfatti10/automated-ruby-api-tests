require 'correios-cep'
require 'cucumber'
require 'dotenv/load'
require 'factory_bot'
require 'faker'
require 'httparty'
require 'pry'
require 'report_builder'
require 'rspec'
require 'json_matchers/rspec'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")

Dotenv.load('../.env')

JsonMatchers.schema_root = File.join(Dir.pwd, 'features/support/data/schemas')

World(FactoryBot::Syntax::Methods)

Correios::CEP.configure do |config|
  config.request_timeout = 3
end
