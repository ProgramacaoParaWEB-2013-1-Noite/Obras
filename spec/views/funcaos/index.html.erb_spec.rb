require 'spec_helper'

describe "funcaos/index" do
  before(:each) do
    assign(:funcaos, [
      stub_model(Funcao,
        :nome => "Nome"
      ),
      stub_model(Funcao,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of funcaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
