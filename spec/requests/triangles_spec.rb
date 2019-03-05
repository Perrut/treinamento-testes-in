require 'rails_helper'

RSpec.describe "Triangles", type: :request do
  describe "GET /triangles" do
    it "get all triangles" do
      get triangles_path
      expect(response).to have_http_status(200)
    end

    it "creates a Triangle and redirects to the Triangle's page" do
      get "/triangles/new"
      expect(response).to render_template(:new)
  
      post "/triangles", :params => { :triangle => {:side => 4} }
  
      expect(response).to redirect_to(assigns(:triangle))
      follow_redirect!
  
      expect(response).to render_template(:show)
      expect(response.body).to include("Triangle was successfully created.")
    end
  
    it "does not render a different template" do
      get "/triangles/new"
      expect(response).to_not render_template(:show)
    end
  end
end
