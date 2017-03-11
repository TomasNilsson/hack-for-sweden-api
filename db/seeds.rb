# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { :name => 'Kungsholmen' },
  { :name => 'Söder' },
  { :name => 'Solna' },
  { :name => 'Lidingö' },
  { :name => 'Midsommarkransen' },
  { :name => 'Östermalm' },
  { :name => 'Vasastan' },
  { :name => 'Gärdet' }
].each do |c|
  Area.where(:name => c[:name]).first_or_create()
end