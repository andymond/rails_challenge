require "rails_helper"

describe Address, type: :model do
  describe "Validations" do
    it "is valid with a description, street_address, city, state and zip" do
      address = Address.create(description: "Home", street_address: "123 Fake St", city: "The Angels", state: "CA", zip_code: 01234)

      expect(address).to be_valid
    end
    it "is invalid without description" do
      address = Address.create(street_address: "123 Fake St", city: "The Angels", state: "CA", zip_code: 01234)

      expect(address).to be_invalid
    end
    it "is invalid without street_address" do
      address = Address.create(description: "Home", city: "The Angels", state: "CA", zip_code: 01234)

      expect(address).to be_invalid
    end
    it "is invalid without city" do
      address = Address.create(description: "Home", street_address: "123 Fake St", state: "CA", zip_code: 01234)

      expect(address).to be_invalid
    end
    it "is invalid without zip" do
      address = Address.create(description: "Home", street_address: "123 Fake St", city: "The Angels", state: "CA")

      expect(address).to be_invalid
    endg
  end

  describe "Relationships" do
    it {should belong_to(:student)}
  end
end
