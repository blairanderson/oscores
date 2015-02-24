require 'rails_helper'

RSpec.describe "nominees/index", type: :view do
  before(:each) do
    assign(:nominees, [
      Nominee.create!(
        :description => "MyText",
        :video_id => "Video",
        :category_id => 1,
        :nominee_type => "Nominee Type",
        :nominee => "Nominee",
        :nominee_description => "MyText",
        :event => nil
      ),
      Nominee.create!(
        :description => "MyText",
        :video_id => "Video",
        :category_id => 1,
        :nominee_type => "Nominee Type",
        :nominee => "Nominee",
        :nominee_description => "MyText",
        :event => nil
      )
    ])
  end

  it "renders a list of nominees" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nominee Type".to_s, :count => 2
    assert_select "tr>td", :text => "Nominee".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
