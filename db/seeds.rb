# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Movie seeds
Movie.destroy_all
m1 = Movie.create(title: "Stalker")
m2 = Movie.create(title: "Only God Forgives")
m3 = Movie.create(title: "Alien")

#Director seeds
Director.destroy_all
d1 = Director.create(name: "Andrei Tarkovsky")
d2 = Director.create(name: "Nicolas Winding Refn")
d3 = Director.create(name: "Ridley Scott")
#List seeds
List.destroy_all
l1 = List.create(name: "Good Movies")
l2 = List.create(name: "Best Movies")

User.destroy_all
u1 = User.create :name => "Luke Eaton", :admin => true, :email => "lukeaton@gmail.com", :password => "chicken"
u2 = User.create :name => "Aviva Sleigh", :admin => false, :email => "dipsy@winky.com", :password => "chicken"
u3 = User.create :name => "Aaron Shaw", :admin => false, :email => "lala@winky.com", :password => "chicken"


#association seeds
d1.movies << m1
d2.movies << m2
d3.movies << m3

m1.lists << l1
m2.lists << l1
m3.lists << l2
