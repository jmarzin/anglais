require 'spec_helper'

describe "traductions/new" do
  before(:each) do
    assign(:traduction, stub_model(Traduction,
      :italien => "MyString",
      :francais => "MyString"
    ).as_new_record)
  end

  it "renders new traduction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", traductions_path, "post" do
      assert_select "input#traduction_italien[name=?]", "traduction[italien]"
      assert_select "input#traduction_francais[name=?]", "traduction[francais]"
    end
  end
end
