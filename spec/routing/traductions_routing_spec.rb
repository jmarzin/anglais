require "spec_helper"

describe TraductionsController do
  describe "routing" do

    it "routes to #index" do
      get("/traductions").should route_to("traductions#index")
    end

    it "routes to #new" do
      get("/traductions/new").should route_to("traductions#new")
    end

    it "routes to #show" do
      get("/traductions/1").should route_to("traductions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/traductions/1/edit").should route_to("traductions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/traductions").should route_to("traductions#create")
    end

    it "routes to #update" do
      put("/traductions/1").should route_to("traductions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/traductions/1").should route_to("traductions#destroy", :id => "1")
    end

  end
end
