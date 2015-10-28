# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  {email: 'user@example.com', password: 'password'},
  {email: 'user2@example.com', password: 'password'}
])

collections = users.first.collections.create([{title: 'Dinner'}, {title: 'Sunday'}])

c1 = collections.first
c2 = collections.second

options1 = c1.options.create([{title: 'Spag bol'}, {title: 'Curry'}])
options2 = c2.options.create([{title: 'Illustration'}, {title: 'Music'}])

ch1 = c1.choices.create(option: options1.first)
ch2 = c2.choices.create(option: options2.second)
