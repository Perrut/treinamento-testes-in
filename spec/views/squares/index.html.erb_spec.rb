require 'rails_helper'

RSpec.describe "squares/index", type: :view do
  before(:each) do
    assign(:squares, [
      Square.create!(
        :side => 2.5
      ),
      Square.create!(
        :side => 2.5
      )
    ])
  end

  it "renders a list of squares" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
