require 'rails_helper'

describe "User visits student show page" do
  it "displays student's name" do
    student = Student.new(name: "Erf")

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
