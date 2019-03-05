require "rails_helper"

RSpec.describe TrianglesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/triangles").to route_to("triangles#index")
    end

    it "routes to #new" do
      expect(:get => "/triangles/new").to route_to("triangles#new")
    end

    it "routes to #show" do
      expect(:get => "/triangles/1").to route_to("triangles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/triangles/1/edit").to route_to("triangles#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/triangles").to route_to("triangles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/triangles/1").to route_to("triangles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/triangles/1").to route_to("triangles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/triangles/1").to route_to("triangles#destroy", :id => "1")
    end
  end
end
