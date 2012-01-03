require "spec_helper"

describe WatchersController do
  describe "routing" do

    it "routes to #index" do
      get("/watchers").should route_to("watchers#index")
    end

    it "routes to #new" do
      get("/watchers/new").should route_to("watchers#new")
    end

    it "routes to #show" do
      get("/watchers/1").should route_to("watchers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/watchers/1/edit").should route_to("watchers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/watchers").should route_to("watchers#create")
    end

    it "routes to #update" do
      put("/watchers/1").should route_to("watchers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/watchers/1").should route_to("watchers#destroy", :id => "1")
    end

  end
end
