require 'rails_helper'

RSpec.describe "ballots/show", type: :view do
  before(:each) do
    @ballot = assign(:ballot, Ballot.create!(
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
