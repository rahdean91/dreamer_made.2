require 'rails_helper'

RSpec.describe "contributions/show", type: :view do
  before(:each) do
    @contribution = assign(:contribution, Contribution.create!(
      :title => "Title",
      :details => "MyText",
      :challenge => nil,
      :user => nil,
      :reward => "Reward",
      :contribution_type => "Contribution Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Reward/)
    expect(rendered).to match(/Contribution Type/)
  end
end
