require 'rails_helper'

RSpec.describe "ballot_nominees/edit", type: :view do
  before(:each) do
    @ballot_nominee = assign(:ballot_nominee, BallotNominee.create!(
      :video_id => "MyString",
      :category_key => "MyString",
      :bn_type => "MyString",
      :nominee => "MyString",
      :nominee_description => "MyText",
      :ballot => nil
    ))
  end

  it "renders the edit ballot_nominee form" do
    render

    assert_select "form[action=?][method=?]", ballot_nominee_path(@ballot_nominee), "post" do

      assert_select "input#ballot_nominee_video_id[name=?]", "ballot_nominee[video_id]"

      assert_select "input#ballot_nominee_category_key[name=?]", "ballot_nominee[category_key]"

      assert_select "input#ballot_nominee_bn_type[name=?]", "ballot_nominee[bn_type]"

      assert_select "input#ballot_nominee_nominee[name=?]", "ballot_nominee[nominee]"

      assert_select "textarea#ballot_nominee_nominee_description[name=?]", "ballot_nominee[nominee_description]"

      assert_select "input#ballot_nominee_ballot_id[name=?]", "ballot_nominee[ballot_id]"
    end
  end
end
