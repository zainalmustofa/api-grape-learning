# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.create(name: "zainal_1", email: "text1@gmail.com", tel: 123456789)
  User.create(name: "zainal_2", email: "text2@gmail.com", tel: 987654321)
end

# # Microposts
# users = User.order(:created_at).take(2)
# 50.times do
#   content = Faker::Lorem.sentence(5)
#   users.each { |user| user.microposts.create!(content: content) }
# end