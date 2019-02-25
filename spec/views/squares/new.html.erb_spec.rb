require 'rails_helper'

RSpec.describe "squares/new", type: :view do
  before(:each) do
    assign(:square, Square.new(
      :side => 1.5
    ))
  end

  it "renders new square form" do
    render

    assert_select "form[action=?][method=?]", squares_path, "post" do

      assert_select "input[name=?]", "square[side]"
    end
  end
end
