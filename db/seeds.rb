# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Participant.destroy_all

apartment_list = %w(Mohit Laura Evan Sue Gabby Bre Max John Chris Jax Frida Kelsey Jamiah Liz Ryan Victor Ian Calvin Benson Jack KK Aitor Chee Lauren Priya JZ Sahil Tom Pete Igor Brian Angelina Justin Stephanie Sania)

apartment_list.each do |name|
    Participant.create(name: name)
end