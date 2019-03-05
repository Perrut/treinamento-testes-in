require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe SquaresController, type: :controller do

  before(:each) do
    Square.destroy_all
  end

  # This should return the minimal set of attributes required to create a valid
  # Square. As you add validations to Square, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { "side": 4 }
  }

  let(:invalid_attributes) {
    { "side": 0 }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SquaresController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Square.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      square = Square.create! valid_attributes
      get :show, params: {id: square.to_param}, session: valid_session
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
      square = Square.create! valid_attributes
      get :edit, params: {id: square.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Square" do
        expect {
          post :create, params: {square: valid_attributes}, session: valid_session
        }.to change(Square, :count).by(1)
      end

      it "redirects to the created square" do
        post :create, params: {square: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Square.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {square: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { "side": 8 }
      }

      it "updates the requested square" do
        square = Square.create! valid_attributes
        put :update, params: {id: square.to_param, square: new_attributes}, session: valid_session
        square.reload
        expect(square.area).to be(64.0)
      end

      it "redirects to the square" do
        square = Square.create! valid_attributes
        put :update, params: {id: square.to_param, square: valid_attributes}, session: valid_session
        expect(response).to redirect_to(square)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        square = Square.create! valid_attributes
        put :update, params: {id: square.to_param, square: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested square" do
      square = Square.create! valid_attributes
      expect {
        delete :destroy, params: {id: square.to_param}, session: valid_session
      }.to change(Square, :count).by(-1)
    end

    it "redirects to the squares list" do
      square = Square.create! valid_attributes
      delete :destroy, params: {id: square.to_param}, session: valid_session
      expect(response).to redirect_to(squares_url)
    end
  end

end
