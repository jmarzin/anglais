require 'spec_helper'

describe "traductions/edit" do
  before(:each) do
    @traduction = assign(:traduction, stub_model(Traduction,
      :italien => "MyString",
      :francais => "MyString"
    ))
  end

  it "renders the edit traduction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", traduction_path(@traduction), "post" do
      assert_select "input#traduction_italien[name=?]", "traduction[italien]"
      assert_select "input#traduction_francais[name=?]", "traduction[francais]"
    end
  end
end
