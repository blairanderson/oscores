require 'rails_helper'

RSpec.describe "ballots/edit", type: :view do
  before(:each) do
    @ballot = assign(:ballot, Ballot.create!(
      :event => nil
    ))
  end

  it "renders the edit ballot form" do
    render

    assert_select "form[action=?][method=?]", ballot_path(@ballot), "post" do

      assert_select "input#ballot_event_id[name=?]", "ballot[event_id]"
    end
  end
end
