require 'rails_helper'

RSpec.describe "triangles/new", type: :view do
  before(:each) do
    assign(:triangle, Triangle.new(
      :side => 1.5
    ))
  end

  it "renders new triangle form" do
    render

    assert_select "form[action=?][method=?]", triangles_path, "post" do

      assert_select "input[name=?]", "triangle[side]"
    end
  end
end
