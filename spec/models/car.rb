require "rails_helper"

RSpec.describe Car, :type => :model do
  it "cars by make" do
    benze = Car.create!(make: "Benze", year: "2016", color: "Black", wheels: "4", doors: "4")
    ferrari = Car.create!(make: "Ferrari", year: "2016", color: "Red", wheels: "4", doors: "3")

    expect(Car.find_by_make("Benze")).to eq(benze)
  end
end
