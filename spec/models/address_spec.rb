require "rails_helper"

describe Address do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without description" do
        address = Address.create!(street: "123 main", city: "denver", state: "co", zipcode: 80203)

        expect(address).to_not be_valid
      end
    end
  end
end
