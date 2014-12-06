require 'spec_helper'

describe "traductions/show" do
  before(:each) do
    @traduction = assign(:traduction, stub_model(Traduction,
      :italien => "Italien",
      :francais => "Francais"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Italien/)
    rendered.should match(/Francais/)
  end
end
