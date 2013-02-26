class Funcionario < ActiveRecord::Base
  belongs_to :funcao
  attr_accessible :funcao_id,:complemento, :nome, :rua, :sexo
end
