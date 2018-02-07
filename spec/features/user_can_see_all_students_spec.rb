require "rails_helper"

describe "user can see all students" do
  scenario "on student index page" do
    student1 = Student.create!(name: "bill")
    student2 = Student.create!(name: "billy")
    student3 = Student.create!(name: "billy bob")

    visit students_path

    expect(page).to have_content("bill")
    expect(page).to have_content("billy")
    expect(page).to have_content("billy bob")
  end
end
