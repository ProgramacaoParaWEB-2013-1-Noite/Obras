# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :funcionario do
    nome "MyString"
    rua "MyString"
    complemento "MyString"
    sexo "MyString"
    funcao nil
  end
end
