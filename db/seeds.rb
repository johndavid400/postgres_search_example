# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

@n = 0
10.times do
  puts @n
  @n = @n + 1
  100.times do
    Post.create title: Faker::Lorem.word, body: Faker::Lorem.word
  end
end
