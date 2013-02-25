require 'spec_helper'

describe "funcaos/new" do
  before(:each) do
    assign(:funcao, stub_model(Funcao,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new funcao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => funcaos_path, :method => "post" do
      assert_select "input#funcao_nome", :name => "funcao[nome]"
    end
  end
end
