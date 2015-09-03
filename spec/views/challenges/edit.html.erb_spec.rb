require 'rails_helper'

RSpec.describe "challenges/edit", type: :view do
  before(:each) do
    @challenge = assign(:challenge, Challenge.create!(
      :title => "MyString",
      :details => "MyText",
      :public => false
    ))
  end

  it "renders the edit challenge form" do
    render

    assert_select "form[action=?][method=?]", challenge_path(@challenge), "post" do

      assert_select "input#challenge_title[name=?]", "challenge[title]"

      assert_select "textarea#challenge_details[name=?]", "challenge[details]"

      assert_select "input#challenge_public[name=?]", "challenge[public]"
    end
  end
end
