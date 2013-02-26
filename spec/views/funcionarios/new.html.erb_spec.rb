require 'spec_helper'

describe "funcionarios/new" do
  before(:each) do
    assign(:funcionario, stub_model(Funcionario,
      :nome => "MyString",
      :rua => "MyString",
      :complemento => "MyString",
      :sexo => "MyString",
      :funcao => nil
    ).as_new_record)
  end

  it "renders new funcionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funcionarios_path, :method => "post" do
      assert_select "input#funcionario_nome", :name => "funcionario[nome]"
      assert_select "input#funcionario_rua", :name => "funcionario[rua]"
      assert_select "input#funcionario_complemento", :name => "funcionario[complemento]"
      assert_select "input#funcionario_sexo", :name => "funcionario[sexo]"
      assert_select "input#funcionario_funcao", :name => "funcionario[funcao]"
    end
  end
end
