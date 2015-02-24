require "rails_helper"

RSpec.describe NomineesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/nominees").to route_to("nominees#index")
    end

    it "routes to #new" do
      expect(:get => "/nominees/new").to route_to("nominees#new")
    end

    it "routes to #show" do
      expect(:get => "/nominees/1").to route_to("nominees#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/nominees/1/edit").to route_to("nominees#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/nominees").to route_to("nominees#create")
    end

    it "routes to #update" do
      expect(:put => "/nominees/1").to route_to("nominees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nominees/1").to route_to("nominees#destroy", :id => "1")
    end

  end
end
