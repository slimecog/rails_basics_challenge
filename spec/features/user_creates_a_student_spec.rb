require "rails_helper"

describe "a user creates a student" do
  scenario "a user can create a student" do
    visit new_student_path

    fill_in "student[name]", with: "new student"
    click_button "Create"

    expect(current_path).to eq("/students/#{Student.last.id}")
    expect(page).to have_content("new student")
    expect(Student.count).to eq(1)
  end
end
