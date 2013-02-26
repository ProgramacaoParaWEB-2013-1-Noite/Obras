require 'spec_helper'

describe "funcionarios/index" do
  before(:each) do
    assign(:funcionarios, [
      stub_model(Funcionario,
        :nome => "Nome",
        :rua => "Rua",
        :complemento => "Complemento",
        :sexo => "Sexo",
        :funcao => nil
      ),
      stub_model(Funcionario,
        :nome => "Nome",
        :rua => "Rua",
        :complemento => "Complemento",
        :sexo => "Sexo",
        :funcao => nil
      )
    ])
  end

  it "renders a list of funcionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
