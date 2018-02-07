require "rails_helper"

describe Address do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without description" do
        student = Student.create!(name: "susan")
        address = Address.new(street: "123 main", city: "denver", state: "co", zipcode: 80203, student_id: student.id)

        expect(address).to_not be_valid
      end

      it "is invalid without city" do
        student = Student.create!(name: "susan")
        address = Address.new(description: "desc", street: "123 main", state: "co", zipcode: 80203, student_id: student.id)

        expect(address).to_not be_valid
      end

      it "is invalid without street" do
        student = Student.create!(name: "susan")
        address = Address.new(description: "desc", city: "denver", state: "co", zipcode: 80203, student_id: student.id)

        expect(address).to_not be_valid
      end

      it "is invalid without state" do
        student = Student.create!(name: "susan")
        address = Address.new(description: "desc", city: "denver", street: "123 main", zipcode: 80203, student_id: student.id)

        expect(address).to_not be_valid
      end

      it "is invalid without zipcode" do
        student = Student.create!(name: "susan")
        address = Address.new(description: "desc", city: "denver", street: "123 main", state: "co", student_id: student.id)

        expect(address).to_not be_valid
      end

      it "is invalid without student_id" do
        address = Address.new(description: "desc", city: "denver", street: "123 main", state: "co", zipcode: 80203)

        expect(address).to_not be_valid
      end
    end

    context "valid attributes" do
      it "is valid with desc, city, street, state, zip and student_id" do
        student = Student.create!(name: "susan")
        address = Address.new(description: "desc", city: "denver", street: "123 main", state: "co", zipcode: 80203, student_id: student.id)

        expect(address).to be_valid
      end
    end

    context "relationship" do
      it "belongs to a student" do
        student = Student.create!(name: "susan")
        address = Address.new(description: "desc", city: "denver", street: "123 main", state: "co", zipcode: 80203, student_id: student.id)

        expect(address).to respond_to(:student)
      end
    end
  end
end
