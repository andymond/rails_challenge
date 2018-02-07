require "rails_helper"

describe "User can create new address" do
  it "allows user to create address with proper info" do
    student = Student.create(name: "Eyore")

    visit "/students/#{student.id}/addresses/new"

    fill_in "address[description]", with: "a"
    fill_in "address[street_address]", with: "b"
    fill_in "address[city]", with: "c"
    fill_in "address[state]", with: "d"
    fill_in "address[zipcode]", with: "e"
    click_on "Create Address"

    expect(page).to have_content("a")
    expect(page).to have_content("b")
    expect(page).to have_content("c")
    expect(page).to have_content("d")
    expect(page).to have_content("e")
  end
end
