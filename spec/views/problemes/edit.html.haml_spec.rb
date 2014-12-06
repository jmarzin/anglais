require 'spec_helper'

describe "problemes/edit" do
  before(:each) do
    @probleme = assign(:probleme, stub_model(Probleme,
      :texte => "MyText",
      :corrige => false
    ))
  end

  it "renders the edit probleme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", probleme_path(@probleme), "post" do
      assert_select "textarea#probleme_texte[name=?]", "probleme[texte]"
      assert_select "input#probleme_corrige[name=?]", "probleme[corrige]"
    end
  end
end
