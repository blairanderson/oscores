require 'rails_helper'

RSpec.describe "ballots/new", type: :view do
  before(:each) do
    assign(:ballot, Ballot.new(
      :event => nil
    ))
  end

  it "renders new ballot form" do
    render

    assert_select "form[action=?][method=?]", ballots_path, "post" do

      assert_select "input#ballot_event_id[name=?]", "ballot[event_id]"
    end
  end
end
