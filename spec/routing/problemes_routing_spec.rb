require "spec_helper"

describe ProblemesController do
  describe "routing" do

    it "routes to #index" do
      get("/problemes").should route_to("problemes#index")
    end

    it "routes to #new" do
      get("/problemes/new").should route_to("problemes#new")
    end

    it "routes to #show" do
      get("/problemes/1").should route_to("problemes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/problemes/1/edit").should route_to("problemes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/problemes").should route_to("problemes#create")
    end

    it "routes to #update" do
      put("/problemes/1").should route_to("problemes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/problemes/1").should route_to("problemes#destroy", :id => "1")
    end

  end
end
