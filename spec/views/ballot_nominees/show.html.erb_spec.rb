require 'rails_helper'

RSpec.describe "ballot_nominees/show", type: :view do
  before(:each) do
    @ballot_nominee = assign(:ballot_nominee, BallotNominee.create!(
      :video_id => "Video",
      :category_key => "Category Key",
      :bn_type => "Bn Type",
      :nominee => "Nominee",
      :nominee_description => "MyText",
      :ballot => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Video/)
    expect(rendered).to match(/Category Key/)
    expect(rendered).to match(/Bn Type/)
    expect(rendered).to match(/Nominee/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
