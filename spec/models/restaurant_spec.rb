require 'rails_helper'

RSpec.describe Restaurant, type: :model do

  it "is valid with a name and a rating between 1 and 5" do
    restaurant = Restaurant.new(name: "Test restaurant", rating: 3)
    expect(restaurant).to be_valid
  end

  it "is invalid without a name" do
    restaurant = Restaurant.new(name: nil, rating: 3)
    expect(restaurant).to_not be_valid
  end

  it "is invalid with a name and a rating below 1" do
    restaurant = Restaurant.new(name: "Test restaurant", rating: 0)
    expect(restaurant).to_not be_valid
  end

  it "is invalid with a name and a rating over 5" do
    restaurant = Restaurant.new(name: "Test restaurant", rating: 6)
    expect(restaurant).to_not be_valid
  end

  it "is invalid with a name and a non-integer rating" do
    restaurant = Restaurant.new(name: "Test restaurant", rating: 3.5)
    expect(restaurant).to_not be_valid
  end
end
