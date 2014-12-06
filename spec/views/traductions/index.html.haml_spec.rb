require 'spec_helper'

describe "traductions/index" do
  before(:each) do
    assign(:traductions, [
      stub_model(Traduction,
        :italien => "Italien",
        :francais => "Francais"
      ),
      stub_model(Traduction,
        :italien => "Italien",
        :francais => "Francais"
      )
    ])
  end

  it "renders a list of traductions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Italien".to_s, :count => 2
    assert_select "tr>td", :text => "Francais".to_s, :count => 2
  end
end
