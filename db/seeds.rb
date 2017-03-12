# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { :name => "kungsholmen", :label => 'Kungsholmen', latitude: "59.331181", longitude: "18.040736", income: "26 851 kr", average_age: "45 år", voting_result: "Borgerligt" },
  { :name => "soder", :label => 'Södermalm', latitude: "59.312527", longitude: "18.061619", income: "23 919 kr", average_age: "47 år", voting_result: "Vänster" },
  { :name => 'solna', :label => 'Solna', latitude: "59.368879", longitude: "18.008433", average_age: "43 år", voting_result: "Borgerligt" },
  { :name => 'midsommarkransen', :label => 'Midsommarkransen', latitude: "59.300000", longitude: "18.000000", average_age: "39 år", voting_result: "Vänster" },
  { :name => 'ostermalm', :label => 'Östermalm', latitude: "59.336684", longitude: "18.085292", income: "31 327 kr", average_age: "49 år", voting_result: "Borgerligt" },
  { :name => 'vasastan', :label => 'Vasastan', latitude: "59.344233", longitude: "18.045621", average_age: "46 år", voting_result: "Borgerligt"},
  { :name => 'gardet', :label => "Gärdet", latitude: "59.343580", longitude: "18.096686", average_age: "45 år", voting_result: "Borgerligt" }
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