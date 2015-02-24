require "rails_helper"

RSpec.describe BallotNomineesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ballot_nominees").to route_to("ballot_nominees#index")
    end

    it "routes to #new" do
      expect(:get => "/ballot_nominees/new").to route_to("ballot_nominees#new")
    end

    it "routes to #show" do
      expect(:get => "/ballot_nominees/1").to route_to("ballot_nominees#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ballot_nominees/1/edit").to route_to("ballot_nominees#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ballot_nominees").to route_to("ballot_nominees#create")
    end

    it "routes to #update" do
      expect(:put => "/ballot_nominees/1").to route_to("ballot_nominees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ballot_nominees/1").to route_to("ballot_nominees#destroy", :id => "1")
    end

  end
end
