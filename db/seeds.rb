# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Maraude.destroy_all
User.destroy_all

puts "User 1 : Creation du compte de Marie-France !"
User.create!(
  first_name: "Marie-France",
  last_name: "Dupont",
  address: "18 place de la madeleine, paris",
  photo: "",
  email: "marie-france.dupont@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 1 - Marie-France : compte créé !"

puts "User 2 : Creation du compte de Wadi !"
User.create!(
  first_name: "Wadi",
  last_name: "Ben Mimoun",
  address: "13 rue de clichy, paris",
  photo: "",
  email: "wadi.benmimoun@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 2 - Wadi : compte créé !"

puts "User 3 : Creation du compte de Marie-France !"
User.create!(
  first_name: "Michael",
  last_name: "Boutelet",
  address: "16 rue villa gaudelet, paris",
  photo: "",
  email: "michael.boutelet@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 3 - Michael : compte créé !"

puts "User 4 : Creation du compte de Quentin !"
User.create!(
  first_name: "Quentin",
  last_name: "Debray",
  address: "18 place de clichy, paris",
  photo: "",
  email: "quentin.debray@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 4 - Quentin : compte créé !"

puts "User 5 : Creation du compte de Mathieu !"
User.create!(
  first_name: "Mathieu",
  last_name: "Dupré",
  address: "35 rue crespin du gasp",
  photo: "",
  email: "mathieu.dupré@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 5 - Mathieu : compte créé !"

puts "User 6 : Creation du compte de Germain !"
User.create!(
  first_name: "Germain",
  last_name: "Loret",
  address: "10 boulevard brune, paris",
  photo: "",
  email: "germain.loret@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 6 - Germain : compte créé !"

puts "User 7 : Creation du compte d'Edward !"
User.create!(
  first_name: "Edward",
  last_name: "shults",
  address: "16 rue villa gaudelet, paris",
  photo: "",
  email: "edward.shults@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 7 - Edward : compte créé !"

puts "Maraude 1 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "16 rue villa gaudelet, paris",
  address_end: "13 rue de clichy, paris",
  description: "",
  photo: "",
  user_id: User.first.id,
  capacity: 10
)
a.save!
puts "Maraude 1 - Creation maraude"

#
# b = Booking.new(
#   maraude_id: Maraude.first.id,
#   user_id: User.first.id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
# )
#
# b.save!
#
# b = Booking.new(
#   maraude_id: Maraude.first.id + 2,
#   user_id: User.first.id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
# ​
# )
# b.save!
#
# b = Booking.new(
#   maraude_id: Maraude.all[1].id,
#   user_id: User.all[3].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
#
# )
# b.save!
#
# b = Booking.new(
#   maraude_id: Maraude.all[2].id,
#   user_id: User.all[3].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
#
# )
# b.save!
#
# b = Booking.new(
#   maraude_id: Maraude.all[1].id,
#   user_id: User.all[3].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
#
# )
# b.save!
#
# b = Booking.new(
#   maraude_id: Maraude.all[1].id,
#   user_id: User.all[1].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
#
# )
# b.save!
#
# b = Booking.new(
#   maraude_id: Maraude.all[2].id,
#   user_id: User.all[1].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
#
# )
# b.save!
#
# b = Booking.new(
#   maraude_id: Maraude.all[3].id,
#   user_id: User.all[4].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
#
# )
# b.save!
#
# b = Booking.new(
#   maraude_id: Maraude.all[3].id,
#   user_id: User.all[4].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
#
# )
# b.save!
#
# b = Booking.new(
#   maraude_id: Maraude.all[1].id,
#   user_id: User.all[4].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
#
# )
# b.save!
