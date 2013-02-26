require 'spec_helper'

describe "funcionarios/show" do
  before(:each) do
    @funcionario = assign(:funcionario, stub_model(Funcionario,
      :nome => "Nome",
      :rua => "Rua",
      :complemento => "Complemento",
      :sexo => "Sexo",
      :funcao => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Rua/)
    rendered.should match(/Complemento/)
    rendered.should match(/Sexo/)
    rendered.should match(//)
  end
end
