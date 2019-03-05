require 'rails_helper'

RSpec.describe "squares/edit", type: :view do
  before(:each) do
    @square = assign(:square, Square.create!(
      :side => 1.5
    ))
  end

  it "renders the edit square form" do
    render

    assert_select "form[action=?][method=?]", square_path(@square), "post" do

      assert_select "input[name=?]", "square[side]"
    end
  end
end
