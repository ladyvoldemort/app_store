100.times do
    name = Faker::App.name
    description = Faker::Lorem.sentence
    category = Faker::Commerce.department
    price = Faker::Commerce.price
    version = Faker::App.semantic_version
    author = Faker::App.author
    logo = Faker::LoremPixel.image
  App.create(name: name, description: description, category: category, price: price, version: version, author: author, logo: logo)
end
