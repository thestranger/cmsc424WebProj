require "spec_helper"

describe ContainsController do
  describe "routing" do

    it "routes to #index" do
      get("/contains").should route_to("contains#index")
    end

    it "routes to #new" do
      get("/contains/new").should route_to("contains#new")
    end

    it "routes to #show" do
      get("/contains/1").should route_to("contains#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contains/1/edit").should route_to("contains#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contains").should route_to("contains#create")
    end

    it "routes to #update" do
      put("/contains/1").should route_to("contains#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contains/1").should route_to("contains#destroy", :id => "1")
    end

  end
end
