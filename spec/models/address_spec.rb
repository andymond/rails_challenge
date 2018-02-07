require "rails_helper"

describe Address, type: :model do
  describe "Validations" do
    it "is valid with a description, street_address, city, state, zip and student" do
      student = Student.create(name: "Scurvy")
      address = student.addresses.create(description: "Home", street_address: "123 Fake St", city: "The Angels", state: "CA", zipcode: 01234)

      expect(address).to be_valid
    end
    it "is invalid without description" do
      student = Student.create(name: "Scurvy")
      address = student.addresses.create(street_address: "123 Fake St", city: "The Angels", state: "CA", zipcode: 01234)

      expect(address).to be_invalid
    end
    it "is invalid without street_address" do
      student = Student.create(name: "Scurvy")
      address = student.addresses.create(description: "Home", city: "The Angels", state: "CA", zipcode: 01234)

      expect(address).to be_invalid
    end
    it "is invalid without city" do
      student = Student.create(name: "Scurvy")
      address = student.addresses.create(description: "Home", street_address: "123 Fake St", state: "CA", zipcode: 01234)

      expect(address).to be_invalid
    end
    it "is invalid without zip" do
      student = Student.create(name: "Scurvy")
      address = student.addresses.create(description: "Home", street_address: "123 Fake St", city: "The Angels", state: "CA")

      expect(address).to be_invalid
    end
  end

  describe "Relationships" do
    it {should belong_to(:student)}
  end
end
