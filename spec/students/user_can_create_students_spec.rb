require "rails_helper"

describe "User can create new students" do
  it "allows user to create student" do
    visit "/students/new"

    fill_in "student[name]", with: "Holden"
    click_on "Create Student"

    expect(page).to have_content("Holden")
  end
end
