require "rails_helper"

describe "User can see list of all students" do
  it "displays all students" do
    student_1 = Student.create(name: "Georgina")
    student_2 = Student.create(name: "Squidboy")

    visit "/students"

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
  end
  it "allows user to click on student to view their show page" do
    student_1 = Student.create(name: "Georgina")
    student_2 = Student.create(name: "Squidboy")

    visit "/students"
    click_on student_1.name

    expect(current_path).to eq("/students/#{student_1.id}")
    expect(page).to have_content(student_1.name)
    expect(page).to_not have_content(student_2.name)
  end
end
