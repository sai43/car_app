require "rails_helper"

RSpec.describe Car, :type => :model do

  # it "cars by make" do
  #   benze = Car.create!(make: "Benze", year: "2016", color: "Black", wheels: "4", doors: "4")
  #   expect(Car.find_by_make("Benze")).to eq(benze)
  # end

  # it "should be failed for invalid datatype" do
  #    ferrari = Car.create!(make: "Ferrari", year: "2016s", color: "Red", wheels: "4", doors: "3")
  #    expect(Car.find_by_make("Benze")).to eq(ferrari)
  # end

  # it { should validate_presence_of :make }

  it "should require a make" do
    car = Car.create(:make => "")
    car.valid?
    car.errors.should have_key(:make)
  end

end
