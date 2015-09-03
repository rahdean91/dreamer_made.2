require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :title => "MyString",
      :goal => "MyText",
      :user => nil,
      :page => nil,
      :public => false,
      :category => nil,
      :phase => nil
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "textarea#project_goal[name=?]", "project[goal]"

      assert_select "input#project_user_id[name=?]", "project[user_id]"

      assert_select "input#project_page_id[name=?]", "project[page_id]"

      assert_select "input#project_public[name=?]", "project[public]"

      assert_select "input#project_category_id[name=?]", "project[category_id]"

      assert_select "input#project_phase_id[name=?]", "project[phase_id]"
    end
  end
end
