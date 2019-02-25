require 'rails_helper'

RSpec.describe "squares/show", type: :view do
  before(:each) do
    @square = assign(:square, Square.create!(
      :side => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
  end
end
