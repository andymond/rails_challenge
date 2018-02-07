require "rails_helper"

describe Student, type: :model do
  describe "Validations" do
    it "is valid with a name" do
      student = Student.create(name: "Reginald")

      expect(student).to be_valid
    end
    it "is invalid with no name" do
      student = Student.create(name: "")

      expect(student).to be_invalid
    end
  end

  describe "Relationships" do
    it {should have_many(:addresses)}
  end
end
