require 'rails_helper'

RSpec.describe "nominees/new", type: :view do
  before(:each) do
    assign(:nominee, Nominee.new(
      :description => "MyText",
      :video_id => "MyString",
      :category_id => 1,
      :nominee_type => "MyString",
      :nominee => "MyString",
      :nominee_description => "MyText",
      :event => nil
    ))
  end

  it "renders new nominee form" do
    render

    assert_select "form[action=?][method=?]", nominees_path, "post" do

      assert_select "textarea#nominee_description[name=?]", "nominee[description]"

      assert_select "input#nominee_video_id[name=?]", "nominee[video_id]"

      assert_select "input#nominee_category_id[name=?]", "nominee[category_id]"

      assert_select "input#nominee_nominee_type[name=?]", "nominee[nominee_type]"

      assert_select "input#nominee_nominee[name=?]", "nominee[nominee]"

      assert_select "textarea#nominee_nominee_description[name=?]", "nominee[nominee_description]"

      assert_select "input#nominee_event_id[name=?]", "nominee[event_id]"
    end
  end
end
