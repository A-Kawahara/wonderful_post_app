# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |n|
  User.create!(
    email: "user00#{n + 1}@test.com",
    password: "test1234"
  )
end

User.all.each do |user|
  50.times do |i|
    user.articles.create!(
      title: "No.#{i + 1} : user00#{user.id}の記事",
      content:  "No.#{i + 1} : user00#{user.id}の記事の本文"
    )
  end
end
