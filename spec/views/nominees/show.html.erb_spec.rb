require 'rails_helper'

RSpec.describe "nominees/show", type: :view do
  before(:each) do
    @nominee = assign(:nominee, Nominee.create!(
      :description => "MyText",
      :video_id => "Video",
      :category_id => 1,
      :nominee_type => "Nominee Type",
      :nominee => "Nominee",
      :nominee_description => "MyText",
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Video/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Nominee Type/)
    expect(rendered).to match(/Nominee/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
