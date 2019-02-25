require 'rails_helper'

RSpec.describe "triangles/edit", type: :view do
  before(:each) do
    @triangle = assign(:triangle, Triangle.create!(
      :side => 1.5
    ))
  end

  it "renders the edit triangle form" do
    render

    assert_select "form[action=?][method=?]", triangle_path(@triangle), "post" do

      assert_select "input[name=?]", "triangle[side]"
    end
  end
end
