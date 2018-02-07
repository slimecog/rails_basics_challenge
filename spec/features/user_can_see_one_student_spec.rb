require "rails_helper"

describe "user can see single student" do
  scenario "user sees a specific existing student" do
    student = Student.create!(name: "cameron")
    visit "/students/#{student.id}"

    expect(current_path).to eq("/students/#{student.id}")
    expect(page).to have_content("cameron")
  end
end
