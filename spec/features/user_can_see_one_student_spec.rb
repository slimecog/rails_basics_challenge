require "rails_helper"

describe "user can see single student" do
  scenario "user sees a specific existing student" do







    As a user
When I visit /students/:id
I see the name of a student
