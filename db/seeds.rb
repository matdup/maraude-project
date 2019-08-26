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

User.create!(
  first_name: "Mike",
  last_name: "Bout",
  address: "16 rue villa gaudelet, Paris",
  photo: "",
  email: "test1@test.com",
  password: "123456"
  )

User.create!(
  first_name: "Wadi",
  last_name: "Ben",
  address: "14 rue crespin du gast, Paris",
  photo: "",
  email: "test2@test.com",
  password: "123456"
  )

User.create!(
  first_name: "Matt",
  last_name: "Duper",
  address: "14 rue crespin du gast, Paris",
  photo: "",
  email: "test3@test.com",
  password: "123456"
  )

User.create!(
  first_name: "Quentin",
  last_name: "Debray",
  address: "16 rue villa gaudelet, Paris",
  photo: "",
  email: "test4@test.com",
  password: "123456"
  )

User.create!(
  first_name: "Dania",
  last_name: "Aflik",
  address: "16 rue villa gaudelet, Paris",
  photo: "",
  email: "test5@test.com",
  password: "123456"
  )

a = Maraude.new(
  title: "Arène du bout de la rue",
  address: "Rue du Bon-Secours, Brussel",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore ",
  photo: "https://images.unsplash.com/photo-1495555687398-3f50d6e79e1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  user_id: User.first.id,
  capacity: 10
)

a.save!

a = Maraude.new(
  title: "Arène du Mika",
  address: "Rue du seigneur",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
  photo: "https://images.unsplash.com/photo-1542720046-1e772598ea39?ixlib=rb-1.2.1&auto=format&fit=crop&w=1252&q=80",
  user_id: User.all[1].id,
  capacity: 12
)
a.save!


a = Maraude.new(
  title: "Arène de wesh Wadi",
  address: "Rue du olé",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
  photo: "https://images.unsplash.com/photo-1509563268479-0f004cf3f58b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  user_id: User.all[2].id,
  capacity: 15
)
a.save!

a = Maraude.new(
  title: "Arène de Mathias",
  address: "Rue du pokémon",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
  photo: "https://images.unsplash.com/photo-1560191832-d3bb3d4852a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80",
  user_id: User.all[3].id,
  capacity: 20
)
a.save!

a = Maraude.new(
  title: "Arène du Qwentinator",
  address: "Rue du bon vivant",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
  photo: "https://images.unsplash.com/photo-1542457953430-c046813ffa86?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  user_id: User.all[3].id,
  capacity: 8
)
a.save!

a = Maraude.new(
  title: "Arène de la folie",
  address: "Rue des blessés",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
  photo: "https://images.unsplash.com/photo-1542459629-519887d476da?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80",
  user_id: User.all[2].id,
  capacity: 30
)
a.save!

a = Maraude.new(
  title: "Arène de la folie",
  address: "Rue des blessés",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore",
  photo: "https://images.unsplash.com/photo-1542459629-519887d476da?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80",
  user_id: User.all[2].id,
  capacity: 30
)
a.save!

b = Booking.new(
  maraude_id: Maraude.first.id,
  user_id: User.first.id,
  created_at: 2019_08_22_095145,
  updated_at: 2019_10_12_095145
)

b.save!

b = Booking.new(
  maraude_id: Maraude.first.id + 2,
  user_id: User.first.id,
  created_at: 2019_08_22_095145,
  updated_at: 2019_10_12_095145
)
b.save!

b = Booking.new(
  maraude_id: Maraude.all[1].id,
  user_id: User.all[3].id,
  created_at: 2019_08_22_095145,
  updated_at: 2019_10_12_095145
)
b.save!

b = Booking.new(
  maraude_id: Maraude.all[2].id,
  user_id: User.all[3].id,
  created_at: 2019_08_22_095145,
  updated_at: 2019_10_12_095145
)
b.save!

b = Booking.new(
  maraude_id: Maraude.all[1].id,
  user_id: User.all[3].id,
  created_at: 2019_08_22_095145,
  updated_at: 2019_10_12_095145
)
b.save!

b = Booking.new(
  maraude_id: Maraude.all[1].id,
  user_id: User.all[1].id,
  created_at: 2019_08_22_095145,
  updated_at: 2019_10_12_095145
)
b.save!

b = Booking.new(
  maraude_id: Maraude.all[2].id,
  user_id: User.all[1].id,
  created_at: 2019_08_22_095145,
  updated_at: 2019_10_12_095145
)
b.save!

b = Booking.new(
  maraude_id: Maraude.all[3].id,
  user_id: User.all[4].id,
  created_at: 2019_08_22_095145,
  updated_at: 2019_10_12_095145
)
b.save!

b = Booking.new(
  maraude_id: Maraude.all[3].id,
  user_id: User.all[4].id,
  created_at: 2019_08_22_095145,
  updated_at: 2019_10_12_095145
)
b.save!

b = Booking.new(
  maraude_id: Maraude.all[1].id,
  user_id: User.all[4].id,
  created_at: 2019_08_22_095145,
  updated_at: 2019_10_12_095145
)
b.save!
