# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all()
Group.delete_all()

Group.create([
  {name: 'Video'},
  {name: 'Article'},
  {name: 'Paper'}
])

Category.create([
  {title: 'Books'},
  {title: 'Streaming'},
  {title: 'Jobs Portals'},
  {title: 'Shops'}
])

Category.create([
  {parent_category_id: 1, title: 'Tech'},
  {parent_category_id: 1, title: 'Economy'},
  {parent_category_id: 1, title: 'Novels'}
])
  
Category.create([
  {parent_category_id: 2, title: 'Education'},
  {parent_category_id: 2, title: 'Shows'},
  {parent_category_id: 2, title: 'Movies'},
  {parent_category_id: 2, title: 'Gameplays'}
])

Category.create([
  {parent_category_id: 3, title: 'Coding'},
  {parent_category_id: 3, title: 'Industry'}
])

Category.create([
  {parent_category_id: 4, title: 'Books'},
  {parent_category_id: 4, title: 'Motorcycle'},
  {parent_category_id: 4, title: 'Smartphones'},
  {parent_category_id: 4, title: 'Fashion'},
  {parent_category_id: 4, title: 'Home & Kitchen'}
])

g_array = Group.all.pluck(:id)
c_array = Category.all.pluck(:id)
30.times do
  Bookmark.create([
    {
      group_id: g_array.sample,
      category_id: c_array.sample,
      url: Faker::Internet.url,
      title: Faker::Lorem.sentence(word_count: rand(1..5))
    }
  ])
end
