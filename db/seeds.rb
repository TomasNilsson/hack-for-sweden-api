# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { :name => "kungsholmen", :label => 'Kungsholmen' },
  { :name => "soder", :label => 'Södermalm' },
  { :name => 'solna', :label => 'Solna' },
  { :name => 'midsommarkransen', :label => 'Midsommarkransen' },
  { :name => 'ostermalm', :label => 'Östermalm' },
  { :name => 'vasastan', :label => 'Vasastan' },
  { :name => 'gardet', :label => "Gärdet" }
].each do |a|
  Area.where(:name => a[:name]).first_or_create.update(a)
end

[
  { :name => 'natur', :label => 'Natur',  :opt1 => "Skog", :opt2 => "Parker" },
  { :name => 'barer', :label => 'Barer', :opt1 => "Öl", :opt2 => "Drinkar" },
  { :name => 'musik', :label => 'Musik', :opt1 => "Jazz", :opt2 => "Elektro" },
  { :name => 'restaurang', :label => 'Restaurang', :opt1 => "Pizza", :opt2 => "Gourmet" },
  { :name => 'traning', :label => 'Träning', :opt1 => "Gym", :opt2 => "Motionsspår" },
  { :name => 'stadspuls', :label => 'Stadspuls', :opt1 => "Hippt", :opt2 => "Lugnt" },
  { :name => 'kultur', :label => 'Kultur', :opt1 => "Teater", :opt2 => "Festival" }
].each do |c|
  Category.where(:name => c[:name]).first_or_create().update(c)
end