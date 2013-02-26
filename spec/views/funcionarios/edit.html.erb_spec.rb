require 'spec_helper'

describe "funcionarios/edit" do
  before(:each) do
    @funcionario = assign(:funcionario, stub_model(Funcionario,
      :nome => "MyString",
      :rua => "MyString",
      :complemento => "MyString",
      :sexo => "MyString",
      :funcao => nil
    ))
  end

  it "renders the edit funcionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funcionarios_path(@funcionario), :method => "post" do
      assert_select "input#funcionario_nome", :name => "funcionario[nome]"
      assert_select "input#funcionario_rua", :name => "funcionario[rua]"
      assert_select "input#funcionario_complemento", :name => "funcionario[complemento]"
      assert_select "input#funcionario_sexo", :name => "funcionario[sexo]"
      assert_select "input#funcionario_funcao", :name => "funcionario[funcao]"
    end
  end
end
