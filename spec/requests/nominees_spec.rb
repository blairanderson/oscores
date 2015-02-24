require 'rails_helper'

RSpec.describe "Nominees", type: :request do
  describe "GET /nominees" do
    it "works! (now write some real specs)" do
      get nominees_path
      expect(response).to have_http_status(200)
    end
  end
end
