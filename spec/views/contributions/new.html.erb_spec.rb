require 'rails_helper'

RSpec.describe "contributions/new", type: :view do
  before(:each) do
    assign(:contribution, Contribution.new(
      :title => "MyString",
      :details => "MyText",
      :challenge => nil,
      :user => nil,
      :reward => "MyString",
      :contribution_type => "MyString"
    ))
  end

  it "renders new contribution form" do
    render

    assert_select "form[action=?][method=?]", contributions_path, "post" do

      assert_select "input#contribution_title[name=?]", "contribution[title]"

      assert_select "textarea#contribution_details[name=?]", "contribution[details]"

      assert_select "input#contribution_challenge_id[name=?]", "contribution[challenge_id]"

      assert_select "input#contribution_user_id[name=?]", "contribution[user_id]"

      assert_select "input#contribution_reward[name=?]", "contribution[reward]"

      assert_select "input#contribution_contribution_type[name=?]", "contribution[contribution_type]"
    end
  end
end
