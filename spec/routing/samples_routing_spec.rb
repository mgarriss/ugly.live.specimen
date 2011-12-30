require "spec_helper"

describe SamplesController do
  describe "routing" do

    it "routes to #index" do
      get("/samples").should route_to("samples#index")
    end

    it "routes to #new" do
      get("/samples/new").should route_to("samples#new")
    end

    it "routes to #show" do
      get("/samples/1").should route_to("samples#show", :id => "1")
    end

    it "routes to #edit" do
      get("/samples/1/edit").should route_to("samples#edit", :id => "1")
    end

    it "routes to #create" do
      post("/samples").should route_to("samples#create")
    end

    it "routes to #update" do
      put("/samples/1").should route_to("samples#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/samples/1").should route_to("samples#destroy", :id => "1")
    end

  end
end
