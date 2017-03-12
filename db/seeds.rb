# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { :name => "kungsholmen", :label => 'Kungsholmen', latitude: "59.331181", longitude: "18.040736" },
  { :name => "soder", :label => 'Södermalm', latitude: "59.312527", longitude: "18.061619" },
  { :name => 'solna', :label => 'Solna', latitude: "59.368879", longitude: "18.008433" },
  { :name => 'midsommarkransen', :label => 'Midsommarkransen', latitude: "59.300000", longitude: "18.000000" },
  { :name => 'ostermalm', :label => 'Östermalm', latitude: "59.336684", longitude: "18.085292" },
  { :name => 'vasastan', :label => 'Vasastan', latitude: "59.344233", longitude: "18.045621" },
  { :name => 'gardet', :label => "Gärdet", latitude: "59.343580", longitude: "18.096686" }
].each do |a|
  Area.where(:name => a[:name]).first_or_create.update(a)
end

[
  { :name => 'natur', :label => 'Natur',  :left => "Skog", :right => "Parker" },
  { :name => 'barer', :label => 'Barer', :left => "Öl", :right => "Drinkar" },
  { :name => 'musik', :label => 'Musik', :left => "Jazz", :right => "Elektro" },
  { :name => 'restaurang', :label => 'Restaurang', :left => "Pizza", :right => "Gourmet" },
  { :name => 'traning', :label => 'Träning', :left => "Gym", :right => "Motionsspår" },
  { :name => 'stadspuls', :label => 'Stadspuls', :left => "Hippt", :right => "Lugnt" },
  { :name => 'kultur', :label => 'Kultur', :left => "Teater", :right => "Festival" }
].each do |c|
  Category.where(:name => c[:name]).first_or_create().update(c)
end