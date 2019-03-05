require 'rails_helper'

RSpec.describe Triangle, type: :model do
  it "create triangle only with valid side size" do
    Triangle.create(side: 0)
    Triangle.create(side: 1)
    Triangle.create(side: 1000)
    Triangle.create(side: 1001)
    
    query = Triangle.all
    
    expect(query.length).to eq(2)
  end

  it "calculate the right perimeter" do
    triangle = Triangle.create!(side: 1)

    expect(triangle.perimeter).to eq(3.0)

    triangle = Triangle.create!(side: 2)

    expect(triangle.perimeter).to eq(6.0)
  end

  it "get the correct number of sides" do
    triangle = Triangle.create!(side: 1)

    expect(triangle.sides).to eq(3)
  end

  it "get the correct area" do
    triangle = Triangle.create!(side: 1)

    expect(triangle.area).to eq(0.4330127018922193)

    triangle = Triangle.create!(side: 3)

    expect(triangle.area).to eq(3.8971143170299736)

    triangle = Triangle.create!(side: 5)

    expect(triangle.area).to eq(10.825317547305483)
  end
end
