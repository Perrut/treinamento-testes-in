require 'rails_helper'

RSpec.describe "triangles/index", type: :view do
  before(:each) do
    assign(:triangles, [
      Triangle.create!(
        :side => 2.5
      ),
      Triangle.create!(
        :side => 2.5
      )
    ])
  end

  it "renders a list of triangles" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
