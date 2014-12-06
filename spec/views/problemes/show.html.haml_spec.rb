require 'spec_helper'

describe "problemes/show" do
  before(:each) do
    @probleme = assign(:probleme, stub_model(Probleme,
      :texte => "MyText",
      :corrige => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
