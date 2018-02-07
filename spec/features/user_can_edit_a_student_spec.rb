require "rails_helper"

describe "user edits a student" do
  scenario "a user can edit an existing student" do
    student = Student.create!(name: "simon")
    visit edit_student_path(student)

    fill_in "student[name]", with: "garfunkel"
    click_button "Update"

    expect(current_path).to eq(student_path(student))
    expect(page).to_not have_content("simon")
    expect(page).to have_content("garfunkel")
  end
end
