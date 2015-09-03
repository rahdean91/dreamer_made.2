require 'rails_helper'

RSpec.describe "challenges/index", type: :view do
  before(:each) do
    assign(:challenges, [
      Challenge.create!(
        :title => "Title",
        :details => "MyText",
        :public => false
      ),
      Challenge.create!(
        :title => "Title",
        :details => "MyText",
        :public => false
      )
    ])
  end

  it "renders a list of challenges" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
