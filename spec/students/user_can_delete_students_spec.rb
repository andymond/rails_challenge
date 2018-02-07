require "rails_helper"

describe "User can delete a student" do
  it "allows user to delete student" do
    student_1 = Student.create(name: "Peter")
    student_2 = Student.create(name: "Pedro")

    visit "/students"
    click_on "#delete_#{student_1.name}"

    expect(current_path).to eq("/students")
    expect(page).to have_content(student_2.name)
    expect(page).to_not have_content(student_1.name)
  end
end
