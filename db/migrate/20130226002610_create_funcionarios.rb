class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :rua
      t.string :complemento
      t.string :sexo
      t.references :funcao

      t.timestamps
    end
    add_index :funcionarios, :funcao_id
  end
end
