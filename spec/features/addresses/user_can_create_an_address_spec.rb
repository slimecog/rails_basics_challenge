require "rails_helper"

describe "a user creates an address" do
  scenario "a user can create a new address" do
    student = Student.create!(name: "cam")
    visit "/students/#{student.id}/addresses/new"

    fill_in "address[description]", with: "desc"
    fill_in "address[street]", with: "street"
    fill_in "address[city]", with: "city"
    fill_in "address[state]", with: "state"
    fill_in "address[zipcode]", with: "80203"
    click_button "Create"

    expect(current_path).to eq("/addresses/#{Address.last.id}")
    expect(page).to have_content("desc")
    expect(page).to have_content("street")
    expect(page).to have_content("city")
    expect(page).to have_content("state")
    expect(page).to have_content(80203)
  end
end
