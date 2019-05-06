# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Faker::Config.locale = 'en-GB'

# User.destroy_all
# Brewery.destroy_all
# Product.destroy_all
Post.destroy_all

# b1 = Brewery.create(name: Faker::Beer.brand + " Brewing", bio: Faker::Hipster.paragraph, location: Faker::Address.county, profile_img: Faker::Avatar.image)
# b2 = Brewery.create(name: Faker::Beer.brand + " Brewing", bio: Faker::Hipster.paragraph, location: Faker::Address.county, profile_img: Faker::Avatar.image)
# b3 = Brewery.create(name: Faker::Beer.brand + " Brewing", bio: Faker::Hipster.paragraph, location: Faker::Address.county, profile_img: Faker::Avatar.image)
# b4 = Brewery.create(name: Faker::Beer.brand + " Brewing", bio: Faker::Hipster.paragraph, location: Faker::Address.county, profile_img: Faker::Avatar.image)
# b5 = Brewery.create(name: Faker::Beer.brand + " Brewing", bio: Faker::Hipster.paragraph, location: Faker::Address.county, profile_img: Faker::Avatar.image)
# b6 = Brewery.create(name: Faker::Beer.brand + " Brewing", bio: Faker::Hipster.paragraph, location: Faker::Address.county, profile_img: Faker::Avatar.image)

# p1 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 21)
# p2 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 21)
# p3 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 22)
# p4 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 22)
# p5 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 23)
# p6 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 23)
# p7 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 24)
# p8 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 24)
# p9 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 25)
# p10 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 25)
# p11 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 26)
# p12 = Product.create(name: Faker::Beer.name, description: Faker::Hipster.paragraph, abv: Faker::Number.between(3,11), volume: 330, style: Faker::Beer.style, packaging: "can", price: Faker::Commerce.price(range = 0..6.0), stock: Faker::Number.between(0,30), image_url: "http://static1.squarespace.com/static/58c921959de4bb225df5b6e8/59ff295c0d929758ea10b94e/5a23f03ac8302530429d68a3/1512304702327/Amber+Ale+Bottle.png", brewery_id: 26)

Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))
Post.create(title: Faker::GreekPhilosophers.quote, content: Faker::Hipster.paragraph, brewery_id: Faker::Number.between(21,26))