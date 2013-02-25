require 'spec_helper'

describe "funcaos/show" do
  before(:each) do
    @funcao = assign(:funcao, stub_model(Funcao,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
