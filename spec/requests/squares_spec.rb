require 'rails_helper'

RSpec.describe "Squares", type: :request do
  describe "GET /squares" do
    it "get all squares" do
      get squares_path
      expect(response).to have_http_status(200)
    end

    it "creates a Square and redirects to the Square's page" do
      get "/squares/new"
      expect(response).to render_template(:new)
  
      post "/squares", :params => { :square => {:side => 4} }
  
      expect(response).to redirect_to(assigns(:square))
      follow_redirect!
  
      expect(response).to render_template(:show)
      expect(response.body).to include("Square was successfully created.")
    end
  
    it "does not render a different template" do
      get "/squares/new"
      expect(response).to_not render_template(:show)
    end
  end
end
