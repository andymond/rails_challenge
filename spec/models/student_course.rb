require "rails_helper"

describe StudentCourse, type: :model do
  describe "Relationships" do
    it {should belong_to(:courses)}
    it {should belong_to(:students)}
  end
end
