require 'rails_helper'

RSpec.describe "challenges/new", type: :view do
  before(:each) do
    assign(:challenge, Challenge.new(
      :title => "MyString",
      :details => "MyText",
      :public => false
    ))
  end

  it "renders new challenge form" do
    render

    assert_select "form[action=?][method=?]", challenges_path, "post" do

      assert_select "input#challenge_title[name=?]", "challenge[title]"

      assert_select "textarea#challenge_details[name=?]", "challenge[details]"

      assert_select "input#challenge_public[name=?]", "challenge[public]"
    end
  end
end
