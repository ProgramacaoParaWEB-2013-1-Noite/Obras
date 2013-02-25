require 'spec_helper'

describe "funcaos/edit" do
  before(:each) do
    @funcao = assign(:funcao, stub_model(Funcao,
      :nome => "MyString"
    ))
  end

  it "renders the edit funcao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funcaos_path(@funcao), :method => "post" do
      assert_select "input#funcao_nome", :name => "funcao[nome]"
    end
  end
end
