require "rails_helper"

describe "User sees navigation links across site" do
  it "shows links for studen index & create" do
    student = Student.create(name: "Melvin")
    visit "/students"

    expect(page).to have_link("All Students")
    expect(page).to have_link("Enroll Student")

    visit "/students/#{student.id}"

    expect(page).to have_link("All Students")
    expect(page).to have_link("Enroll Student")

    visit "/students/#{student.id}/edit"

    expect(page).to have_link("All Students")
    expect(page).to have_link("Enroll Student")

    visit "/students/new"

    expect(page).to have_link("All Students")
    expect(page).to have_link("Enroll Student")
  end
end
