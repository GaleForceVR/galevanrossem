# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post = Post.create!(title: "hello", content: "world")
post2 = Post.create!(title: "Post 2", content: "world")
post3 = Post.create!(title: "Post 3", content: "world")
post4 = Post.create!(title: "Post 4", content: "world")


category = Category.create!(name: "post")
category2 = Category.create!(name: "project")
category3 = Category.create!(name: "image")

category_assigment = CategoryAssignment.create!(post_id: post.id, category_id: category.id)

CategoryAssignment.create!(post_id: post2.id, category_id: category2.id)
CategoryAssignment.create!(post_id: post3.id, category_id: category3.id)
CategoryAssignment.create!(post_id: post4.id, category_id: category.id)
