# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
NAMES = ["gary", "cameron", "jason", "kevin", "bob"]

NAMES.each do |name|
  Student.create!(name: name)
end

Address.create!(description: "home", street: "123 main", city: "denver", state: "co", zipcode: 80203, student_id: [1,2,3,4,5].sample)
Address.create!(description: "beahchouse", street: "123 beach", city: "denver", state: "co", zipcode: 80203, student_id: [1,2,3,4,5].sample)
Address.create!(description: "skihut", street: "123 ski", city: "denver", state: "co", zipcode: 80203, student_id: [1,2,3,4,5].sample)
Address.create!(description: "mom's", street: "123 mom", city: "denver", state: "co", zipcode: 80203, student_id: [1,2,3,4,5].sample)
Address.create!(description: "ladyfriend", street: "123 lady", city: "denver", state: "co", zipcode: 80203, student_id: [1,2,3,4,5].sample)
