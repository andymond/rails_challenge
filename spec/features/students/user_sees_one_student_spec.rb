require 'rails_helper'

describe "User visits student show page" do
  it "displays student's name" do
    student = Student.create(name: "Erf")

    visit "/students/#{student.id}"

    expect(page).to have_content(student.name)
  end
end
