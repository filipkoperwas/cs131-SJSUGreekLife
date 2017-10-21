# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    Club.destroy_all

    Club.create([{name:"test", layout:'1'}])
    club1 = Club.find_by_name("test")
    p "Found club #{club1.name}"
    Description.create(name:"test", content:"This is a test description.", club: club1)
    p "Added description to #{club1.name}"

    p "Created #{Club.count} clubs"

