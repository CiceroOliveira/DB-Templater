require "spec_helper"

describe DbTemplatesController do
  describe "routing" do

    it "routes to #index" do
      get("/db_templates").should route_to("db_templates#index")
    end

    it "routes to #new" do
      get("/db_templates/new").should route_to("db_templates#new")
    end

    it "routes to #show" do
      get("/db_templates/1").should route_to("db_templates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/db_templates/1/edit").should route_to("db_templates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/db_templates").should route_to("db_templates#create")
    end

    it "routes to #update" do
      put("/db_templates/1").should route_to("db_templates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/db_templates/1").should route_to("db_templates#destroy", :id => "1")
    end

  end
end
