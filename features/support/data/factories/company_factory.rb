FactoryBot.define do
  factory :create_company, class: Product_Models do
    code_ean { Faker::Company.brazilian_company_number }
    name_prod { Faker::Company.name }
    categoria_name { Faker::Company.name }
  end
end
