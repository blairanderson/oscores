require 'rails_helper'

RSpec.describe "ballot_nominees/index", type: :view do
  before(:each) do
    assign(:ballot_nominees, [
      BallotNominee.create!(
        :video_id => "Video",
        :category_key => "Category Key",
        :bn_type => "Bn Type",
        :nominee => "Nominee",
        :nominee_description => "MyText",
        :ballot => nil
      ),
      BallotNominee.create!(
        :video_id => "Video",
        :category_key => "Category Key",
        :bn_type => "Bn Type",
        :nominee => "Nominee",
        :nominee_description => "MyText",
        :ballot => nil
      )
    ])
  end

  it "renders a list of ballot_nominees" do
    render
    assert_select "tr>td", :text => "Video".to_s, :count => 2
    assert_select "tr>td", :text => "Category Key".to_s, :count => 2
    assert_select "tr>td", :text => "Bn Type".to_s, :count => 2
    assert_select "tr>td", :text => "Nominee".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
