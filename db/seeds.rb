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
puts ""

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
puts ""

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
puts ""

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
puts ""

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
puts ""

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
puts ""

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
puts ""

################################################################################
puts "#######################################"
puts ""

puts "User 8 - Asso Croix Rouge : compte créé !"
User.create!(
  first_name: "La Croix",
  last_name: "Rouge",
  address: "91 avenue de la république, paris",
  photo: "https://www.francebenevolat.org/sites/default/files/thumbnails/t_5b738cd1a435e429923841.jpg",
  email: "la.croix.rouge@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 8 - Asso Croix Rouge : compte créé !"
puts ""

puts "User 9 - Asso Emmaus : compte créé !"
User.create!(
  first_name: "Emma",
  last_name: "Huss",
  address: "7 rue jacques louvel tessier, paris",
  photo: "https://www.lamanchelibre.fr/photos/maxi/119363.jpg",
  email: "emma.huss@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 9 - Asso Emmaus : compte créé !"
puts ""

puts "User 10 - Asso Robin des Rues : compte créé !"
User.create!(
  first_name: "Robin",
  last_name: "des Rues",
  address: "9 Rue Arthur Groussier, paris",
  photo: "https://pbs.twimg.com/profile_images/854972620462317568/PvvjvVXo.jpg",
  email: "robin.desrues@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 10 - Asso Robin des Rues : compte créé !"
puts ""

puts "User 11 - Asso Abbé Pierre : compte créé !"
User.create!(
  first_name: "Abbé",
  last_name: "Pierre",
  address: "80 Rue de la Réunion, paris",
  photo: "https://www.tousbenevoles.org/images/association/1565005876.png",
  email: "abbe.pierre@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 11 - Asso Abbé Pierre : compte créé !"
puts ""

puts "User 12 - Asso Action Sociale : compte créé !"
User.create!(
  first_name: "Action",
  last_name: "Sociale",
  address: "45 Boulevard de Charonne, paris",
  photo: "http://jamaity.org/wp-content/uploads/2014/05/10513362_701072216606508_1489077459206566147_n-500x500.jpg",
  email: "action.sociale@outlook.com",
  password: "123456",
  phone_number: "06 53 38 95 10"
  )
puts "User 12 - Asso Action Sociale : compte créé !"
puts ""

################################################################################
puts "#######################################"

puts "Maraude 1 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "16 rue villa gaudelet, paris",
  address_end: "13 rue de clichy, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[8].id,
  capacity: 10
)
a.save!
puts "Maraude 1 - Maraude crée"
puts ""


puts "Maraude 2 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "41 rue maubeuge, paris",
  address_end: "2 rue richomme, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[9].id,
  capacity: 15
)
a.save!
puts "Maraude 2 - Maraude crée"
puts ""

puts "Maraude 3 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "3 rue du département, paris",
  address_end: "15 boulevard de la villette, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[10].id,
  capacity: 20
)
a.save!
puts "Maraude 3 - Mauraude créé"
puts ""

puts "Maraude 4 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "15 boulevard de belleville, paris",
  address_end: "5 rue de la fayette, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[11].id,
  capacity: 25
)
a.save!
puts "Maraude 4 - Mauraude créé"
puts ""

puts "Maraude 5 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "16 rue villa gaudelet, paris",
  address_end: "13 rue de clichy, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[11].id,
  capacity: 30
)
a.save!
puts "Maraude 5 - Mauraude créé"
puts ""

puts "Maraude 6 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "16 rue villa gaudelet, paris",
  address_end: "13 rue du chemin vert, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[11].id,
  capacity: 35
)
a.save!
puts "Maraude 6 - Mauraude créé"
puts ""

puts "Maraude 7 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "16 boulevard voltaire, paris",
  address_end: "5 rue jaucourt, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[8].id,
  capacity: 40
)
a.save!
puts "Maraude 7 - Mauraude créé"
puts ""

puts "Maraude 8 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "16 rue de lagny, paris",
  address_end: "13 rue de clichy, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[9].id,
  capacity: 10
)
a.save!
puts "Maraude 8 - Mauraude créé"
puts ""

puts "Maraude 9 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "5 rue de charonne, paris",
  address_end: "13 rue de candie, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[10].id,
  capacity: 15
)
a.save!
puts "Maraude 9 - Mauraude créé"
puts ""

puts "Maraude 10 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "5 rue de lyon, paris",
  address_end: "6 rue clovis, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[11].id,
  capacity: 20
)
a.save!
puts "Maraude 10 - Mauraude créé"
puts ""

puts "Maraude 11 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "16 rue villa gaudelet, paris",
  address_end: "13 rue de clichy, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[9].id,
  capacity: 25
)
a.save!
puts "Maraude 11 - Mauraude créé"
puts ""

puts "Maraude 12 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "16 rue villa gaudelet, paris",
  address_end: "13 rue de clichy, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[8].id,
  capacity: 30
)
a.save!
puts "Maraude 12 - Mauraude créé"
puts ""

puts "Maraude 13 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "16 rue rollin, paris",
  address_end: "13 rue de tournon, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[9].id,
  capacity: 15
)
a.save!
puts "Maraude 13 - Mauraude créé"
puts ""

puts "Maraude 14 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "6 rue racine, paris",
  address_end: "13 rue de saussure, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[10].id,
  capacity: 15
)
a.save!
puts "Maraude 14 - Mauraude créé"
puts ""

puts "Maraude 15 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "3 rue monge, paris",
  address_end: "11 rue des fermiers, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[11].id,
  capacity: 20
)
a.save!
puts "Maraude 15 - Mauraude créé"
puts ""

puts "Maraude 16 - Creation maraude"
a = Maraude.new(
  title: "La maraude du bonheur",
  address_start: "16 rue villa gaudelet, paris",
  address_end: "14 rue saint victor, paris",
  description: "Les assos de maraudes mettent en place des maraudes à destination des personnes sans abri, à la rue. Le but est de maintenir un lien social, d'encourager l'orientation vers des travailleurs sociaux et d'alerter les pouvoirs publics en recensant les situations rencontrées.",
  photo: "",
  user_id: User.all[8].id,
  capacity: 25
)
a.save!
puts "Maraude 16 - Mauraude créé"
puts ""


################################################################################
puts "#######################################"
puts ""

# puts "Creation de Booking 1 - User 1"
# b = Booking.new(
#   maraude_id: Maraude.all[1].id,
#   user_id: User.all[1].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
# )
# b.save!
# puts "Booking 1 créé"

# puts "Creation de Booking 2 - User 2"
# b = Booking.new(
#   maraude_id: Maraude.all[2].id,
#   user_id: User.all[2].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
# )
# b.save!
# puts "Booking 2 créé"

# puts "Creation de Booking 3 - User 3"
# b = Booking.new(
#   maraude_id: Maraude.all[3].id,
#   user_id: User.all[3].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
# )
# b.save!
# puts "Booking 3 créé "

# puts "Creation de Booking 4 - User 4"
# b = Booking.new(
#   maraude_id: Maraude.all[4].id,
#   user_id: User.all[4].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
# )
# b.save!
# puts "Booking 4 créé"

# puts "Creation de Booking 5 - User 5"
# b = Booking.new(
#   maraude_id: Maraude.all[5].id,
#   user_id: User.all[5].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
# )
# b.save!
# puts "Booking 5 créé"

# puts "Creation de Booking 6 - User 6"
# b = Booking.new(
#   maraude_id: Maraude.all[6].id,
#   user_id: User.all[6].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
# )
# b.save!
# puts "Booking 6 créé"

# puts "Creation de Booking 7 - User 7"
# b = Booking.new(
#   maraude_id: Maraude.all[7].id,
#   user_id: User.all[7].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
# )
# b.save!
# puts "Booking 7 créé"

# puts "Creation de Booking 8 - User 8"
# b = Booking.new(
#   maraude_id: Maraude.all[8].id,
#   user_id: User.all[8].id,
#   start_at: 2019_08_22_095145,
#   ends_at: 2019_10_12_095145,
#   status: "pending"
# )
# b.save!
# puts "Booking 8 créé"
