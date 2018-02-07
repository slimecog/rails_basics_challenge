require "rails_helper"

describe "a user deletes a student" do
  scenario "a user can delete an exiting user" do
    student = Student.create!(name: "Bill")
    student2 = Student.create!(name: "billy")
    visit students_path

    within(".student_#{student.id}") do
      click_link "Delete"
    end
    expect(current_path).to eq(students_path)
    expect(page).to_not have_content(student.name)
    expect(page).to have_content(student2.name)
  end
end
