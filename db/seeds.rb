# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Maker.destroy_all
Product.destroy_all
Image.destroy_all


User.create!(email: "evelyne@fiers.io", password: "kevinbecker", admin: true)
User.create!(email: "tina@fiers.io", password: "romainbernard", admin: true)

jars = Maker.create!(name: "Jars")
commedesgarcons = Maker.create!(name: "Comme des Garçons")

Image.create({
  picture: File.open(Rails.root.join("db/seeds/images/makerphoto1.jpg")),
  product_or_maker: jars
})

Image.create({
  picture: File.open(Rails.root.join("db/seeds/images/makerphoto2.jpg")),
  product_or_maker: jars
})

Image.create({
  picture: File.open(Rails.root.join("db/seeds/images/makerphoto3.jpg")),
  product_or_maker: commedesgarcons
})


assiette1 = Product.create!(name: "Assiette 1")
assiette2 = Product.create!(name: "Assiette 2")
assiette3 = Product.create!(name: "Assiette 3")
assiette4 = Product.create!(name: "Assiette 4")

Image.create({
  picture: File.open(Rails.root.join("db/seeds/images/platephoto1.jpg")),
  product_or_maker: assiette1
})

Image.create({
  picture: File.open(Rails.root.join("db/seeds/images/platephoto2.jpg")),
  product_or_maker: assiette2
})

Image.create({
  picture: File.open(Rails.root.join("db/seeds/images/platephoto3.jpg")),
  product_or_maker: assiette3
})

Image.create({
  picture: File.open(Rails.root.join("db/seeds/images/platephoto4.jpg")),
  product_or_maker: assiette4
})
