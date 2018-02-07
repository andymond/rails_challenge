require "rails_helper"

describe "User can edit a student's name" do
  it "allows user to update student's name" do
    student = Student.create(name: "Jonny")

    visit "/students/#{student.id}/edit"

    fill_in "student[name]", with: "Sunny"
    click_on "Update Student"

    expect(page).to have_content("Sunny")
    expect(page).to_not have_content("Jonny")
  end

end
