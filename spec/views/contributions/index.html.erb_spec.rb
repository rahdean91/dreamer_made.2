require 'rails_helper'

RSpec.describe "contributions/index", type: :view do
  before(:each) do
    assign(:contributions, [
      Contribution.create!(
        :title => "Title",
        :details => "MyText",
        :challenge => nil,
        :user => nil,
        :reward => "Reward",
        :contribution_type => "Contribution Type"
      ),
      Contribution.create!(
        :title => "Title",
        :details => "MyText",
        :challenge => nil,
        :user => nil,
        :reward => "Reward",
        :contribution_type => "Contribution Type"
      )
    ])
  end

  it "renders a list of contributions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Reward".to_s, :count => 2
    assert_select "tr>td", :text => "Contribution Type".to_s, :count => 2
  end
end
