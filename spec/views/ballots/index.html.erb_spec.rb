require 'rails_helper'

RSpec.describe "ballots/index", type: :view do
  before(:each) do
    assign(:ballots, [
      Ballot.create!(
        :event => nil
      ),
      Ballot.create!(
        :event => nil
      )
    ])
  end

  it "renders a list of ballots" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
