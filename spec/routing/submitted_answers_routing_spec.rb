require "spec_helper"

describe SubmittedAnswersController do
  describe "routing" do

    it "routes to #index" do
      get("/submitted_answers").should route_to("submitted_answers#index")
    end

    it "routes to #new" do
      get("/submitted_answers/new").should route_to("submitted_answers#new")
    end

    it "routes to #show" do
      get("/submitted_answers/1").should route_to("submitted_answers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/submitted_answers/1/edit").should route_to("submitted_answers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/submitted_answers").should route_to("submitted_answers#create")
    end

    it "routes to #update" do
      put("/submitted_answers/1").should route_to("submitted_answers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/submitted_answers/1").should route_to("submitted_answers#destroy", :id => "1")
    end

  end
end
