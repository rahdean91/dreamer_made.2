require 'rails_helper'

RSpec.describe "pages/edit", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      :title => "MyString",
      :goal => "MyText",
      :link => "MyString",
      :user => nil,
      :public => false
    ))
  end

  it "renders the edit page form" do
    render

    assert_select "form[action=?][method=?]", page_path(@page), "post" do

      assert_select "input#page_title[name=?]", "page[title]"

      assert_select "textarea#page_goal[name=?]", "page[goal]"

      assert_select "input#page_link[name=?]", "page[link]"

      assert_select "input#page_user_id[name=?]", "page[user_id]"

      assert_select "input#page_public[name=?]", "page[public]"
    end
  end
end
