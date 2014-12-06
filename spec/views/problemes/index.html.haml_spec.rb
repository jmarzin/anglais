require 'spec_helper'

describe "problemes/index" do
  before(:each) do
    assign(:problemes, [
      stub_model(Probleme,
        :texte => "MyText",
        :corrige => false
      ),
      stub_model(Probleme,
        :texte => "MyText",
        :corrige => false
      )
    ])
  end

  it "renders a list of problemes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
