# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..50
  name = Faker::Name.first_name
  email = Faker::Internet.free_email(name)
  title = Faker::StarTrek.villain
  content = Faker::Lorem.word
  message = Faker::Lorem.paragraph

  user = User.new
  comment = Comment.new
  article = Article.new

  user.name = name
  user.email = email

  article.title = title
  article.content = content
  article.user = user

  comment.message = message
  comment.user = user
  comment.article = article

  user.save
  article.save
  comment.save
end