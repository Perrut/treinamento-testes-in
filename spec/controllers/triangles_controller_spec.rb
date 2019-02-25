require 'rails_helper'

RSpec.describe TrianglesController, type: :controller do

  before(:each) do
    Triangle.destroy_all
  end

  # This should return the minimal set of attributes required to create a valid
  # Triangle. As you add validations to Triangle, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { "side": 4 }
  }

  let(:invalid_attributes) {
    { "side": 0 }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TrianglesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Triangle.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      triangle = Triangle.create! valid_attributes
      get :show, params: {id: triangle.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      triangle = Triangle.create! valid_attributes
      get :edit, params: {id: triangle.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Triangle" do
        expect {
          post :create, params: {triangle: valid_attributes}, session: valid_session
        }.to change(Triangle, :count).by(1)
      end

      it "redirects to the created triangle" do
        post :create, params: {triangle: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Triangle.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {triangle: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { "side": 8 }
      }

      it "updates the requested triangle" do
        triangle = Triangle.create! valid_attributes
        put :update, params: {id: triangle.to_param, triangle: new_attributes}, session: valid_session
        triangle.reload
        expect(triangle.perimeter).to be(24.0)
      end

      it "redirects to the triangle" do
        triangle = Triangle.create! valid_attributes
        put :update, params: {id: triangle.to_param, triangle: valid_attributes}, session: valid_session
        expect(response).to redirect_to(triangle)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        triangle = Triangle.create! valid_attributes
        put :update, params: {id: triangle.to_param, triangle: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested triangle" do
      triangle = Triangle.create! valid_attributes
      expect {
        delete :destroy, params: {id: triangle.to_param}, session: valid_session
      }.to change(Triangle, :count).by(-1)
    end

    it "redirects to the triangles list" do
      triangle = Triangle.create! valid_attributes
      delete :destroy, params: {id: triangle.to_param}, session: valid_session
      expect(response).to redirect_to(triangles_url)
    end
  end

end
