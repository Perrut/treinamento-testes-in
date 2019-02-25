require 'rails_helper'

RSpec.describe TrianglesHelper, type: :helper do
  it "should print correct perimeter" do
    triangle = Triangle.create(side: 4)
    expect(helper.perimeter_with_units(triangle)).to eq("12.0 m")
  end
end
