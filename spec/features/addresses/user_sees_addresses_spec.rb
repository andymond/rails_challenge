require "rails_helper"

describe "User views all addresses for a student" do
  it "displays all of a users addresses" do
    student = Student.create(name: "Burt")
    address_1 = student.addresses.create(description: "Home", street_address: "34 E St", city: "The Angels", state: "CA", zipcode: 01234)
    address_2 = student.addresses.create(description: "Grandmas", street_address: "24 W ST", city: "The Angels", state: "CA", zipcode: 01244)

    visit "/students/#{student.id}/addresses"

    expect(page).to have_content(student.name)
    expect(page).to have_content(address_1.description)
    expect(page).to have_content(address_2.description)
  end
end
