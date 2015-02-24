require 'rails_helper'

RSpec.describe "BallotNominees", type: :request do
  describe "GET /ballot_nominees" do
    it "works! (now write some real specs)" do
      get ballot_nominees_path
      expect(response).to have_http_status(200)
    end
  end
end
