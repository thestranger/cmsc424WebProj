require "spec_helper"

describe TeachesController do
  describe "routing" do

    it "routes to #index" do
      get("/teaches").should route_to("teaches#index")
    end

    it "routes to #new" do
      get("/teaches/new").should route_to("teaches#new")
    end

    it "routes to #show" do
      get("/teaches/1").should route_to("teaches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/teaches/1/edit").should route_to("teaches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/teaches").should route_to("teaches#create")
    end

    it "routes to #update" do
      put("/teaches/1").should route_to("teaches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/teaches/1").should route_to("teaches#destroy", :id => "1")
    end

  end
end
