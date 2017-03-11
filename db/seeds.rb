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
].each do |a|
  Area.where(:name => a[:name]).first_or_create()
end

[
  { :name => 'Natur', :opt1 => "Skog", :opt2 => "Parker" },
  { :name => 'Barer', :opt1 => "Öl", :opt2 => "Drinkar" },
  { :name => 'Musik', :opt1 => "Jazz", :opt2 => "Elektro" },
  { :name => 'Restaurang', :opt1 => "Pizza", :opt2 => "Gourmet" },
  { :name => 'Träning', :opt1 => "Gym", :opt2 => "Motionsspår" },
  { :name => 'Stadspuls', :opt1 => "Hippt", :opt2 => "Lugnt" },
  { :name => 'Kultur', :opt1 => "Teater", :opt2 => "Festival" }
].each do |c|
  Category.where(:name => c[:name]).first_or_create(c)
end