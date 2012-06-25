require "spec_helper"

describe MountainsController do
  describe "routing" do

    it "routes to #index" do
      get("/mountains").should route_to("mountains#index")
    end

    it "routes to #new" do
      get("/mountains/new").should route_to("mountains#new")
    end

    it "routes to #show" do
      get("/mountains/1").should route_to("mountains#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mountains/1/edit").should route_to("mountains#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mountains").should route_to("mountains#create")
    end

    it "routes to #update" do
      put("/mountains/1").should route_to("mountains#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mountains/1").should route_to("mountains#destroy", :id => "1")
    end

  end
end
