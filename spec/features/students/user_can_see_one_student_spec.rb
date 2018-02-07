require "rails_helper"

describe "user can see single student" do
  scenario "user sees a specific existing student" do
    student = Student.create!(name: "cameron")
    visit student_path(student)

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content("cameron")
    expect(page).to have_link("new student")
    expect(page).to have_link("all students")
  end
end
