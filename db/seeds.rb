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


User.create!(email: "evelyne@fiers.io", password: "kevinbecker", admin: true)
User.create!(email: "tina@fiers.io", password: "romainbernard", admin: true)


Maker.create!(name: "Jars")
Maker.create!(name: "Comme des Garçons")

Product.create!(name: "Produit à la race")
