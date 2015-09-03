require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :title => "Title",
        :goal => "MyText",
        :user => nil,
        :page => nil,
        :public => false,
        :category => nil,
        :phase => nil
      ),
      Project.create!(
        :title => "Title",
        :goal => "MyText",
        :user => nil,
        :page => nil,
        :public => false,
        :category => nil,
        :phase => nil
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
