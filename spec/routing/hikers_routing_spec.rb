require "spec_helper"

describe HikersController do
  describe "routing" do

    it "routes to #index" do
      get("/hikers").should route_to("hikers#index")
    end

    it "routes to #new" do
      get("/hikers/new").should route_to("hikers#new")
    end

    it "routes to #show" do
      get("/hikers/1").should route_to("hikers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hikers/1/edit").should route_to("hikers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hikers").should route_to("hikers#create")
    end

    it "routes to #update" do
      put("/hikers/1").should route_to("hikers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hikers/1").should route_to("hikers#destroy", :id => "1")
    end

  end
end
