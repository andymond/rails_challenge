require "rails_helper"

describe Course, type: :model do
  describe "Relationships" do
    it {should have_many(:student_courses)}
    it {should have_many(:students)}
  end
end
