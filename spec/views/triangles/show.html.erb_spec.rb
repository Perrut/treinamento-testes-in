require 'rails_helper'

RSpec.describe "triangles/show", type: :view do
  before(:each) do
    @triangle = assign(:triangle, Triangle.create!(
      :side => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
  end
end
