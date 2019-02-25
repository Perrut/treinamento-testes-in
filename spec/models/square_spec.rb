require 'rails_helper'

RSpec.describe Square, type: :model do
  it "create square only with valid side size" do
    Square.create
    Square.create(side: 0)
    Square.create(side: 1)
    Square.create(side: 1000)
    Square.create(side: 1001)
    
    query = Square.all
    
    expect(query.length).to eq(2)
  end

  it "calculate the right perimeter" do
    square = Square.create!(side: 1)

    expect(square.perimeter).to eq(4.0)

    square = Square.create!(side: 2)

    expect(square.perimeter).to eq(8.0)
  end

  it "get the correct number of sides" do
    square = Square.create!(side: 1)

    expect(square.sides).to eq(4)
  end

  it "get the correct area" do
    square = Square.create!(side: 1)

    expect(square.area).to eq(1.0)

    square = Square.create!(side: 3)

    expect(square.area).to eq(9.0)

    square = Square.create!(side: 5)

    expect(square.area).to eq(25.0)
  end
end
